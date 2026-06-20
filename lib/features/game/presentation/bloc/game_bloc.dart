// lib/features/game/presentation/bloc/game_bloc.dart

import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/services/lives_service.dart';
import '../../../../core/services/power_up_service.dart';
import '../../../../core/services/sound_service.dart';
import '../../../../core/utils/game_logic.dart';
import '../../domain/entities/game_board_entity.dart';
import '../../domain/usecases/get_best_score_usecase.dart';
import '../../domain/usecases/load_game_state_usecase.dart';
import '../../domain/usecases/reset_game_usecase.dart';
import '../../domain/usecases/save_best_score_usecase.dart';
import '../../domain/usecases/save_game_state_usecase.dart';
import '../../../collection/domain/usecases/get_unlocked_levels_usecase.dart';
import '../../../collection/domain/usecases/unlock_animal_usecase.dart';
import 'game_event.dart';
import 'game_state.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc({
    required GetBestScoreUseCase getBestScore,
    required SaveBestScoreUseCase saveBestScore,
    required LoadGameStateUseCase loadGameState,
    required SaveGameStateUseCase saveGameState,
    required ResetGameUseCase resetGame,
    required UnlockAnimalUseCase unlockAnimal,
    required GetUnlockedLevelsUseCase getUnlockedLevels,
    required SoundService soundService,
    required PowerUpService powerUpService,
    required LivesService livesService,
  })  : _getBestScore = getBestScore,
        _saveBestScore = saveBestScore,
        _loadGameState = loadGameState,
        _saveGameState = saveGameState,
        _resetGame = resetGame,
        _unlockAnimal = unlockAnimal,
        _getUnlockedLevels = getUnlockedLevels,
        _sound = soundService,
        _powerUps = powerUpService,
        _lives = livesService,
        super(GameState.initial()) {
    on<GameEvent>(
      (event, emit) => event.map(
        started: (_) => _onStarted(emit),
        swiped: (e) => _onSwiped(e.direction, emit),
        reset: (_) => _onReset(emit),
        discoveryDismissed: (_) => _onDiscoveryDismissed(emit),
        continueAfterWin: (_) => _onContinueAfterWin(emit),
        undoPressed: (_) => _onUndoPressed(emit),
        swapActivated: (_) => _onSwapActivated(emit),
        deleteActivated: (_) => _onDeleteActivated(emit),
        tileSelected: (e) => _onTileSelected(e.row, e.col, emit),
        powerUpCancelled: (_) => _onPowerUpCancelled(emit),
        powerUpNotified: (_) => _onPowerUpNotified(emit),
      ),
    );
  }

  final GetBestScoreUseCase _getBestScore;
  final SaveBestScoreUseCase _saveBestScore;
  final LoadGameStateUseCase _loadGameState;
  final SaveGameStateUseCase _saveGameState;
  final ResetGameUseCase _resetGame;
  final UnlockAnimalUseCase _unlockAnimal;
  final GetUnlockedLevelsUseCase _getUnlockedLevels;
  final SoundService _sound;
  final PowerUpService _powerUps;
  final LivesService _lives;

  final Set<int> _unlockedLevels = {1, 2};
  // Undo history — each entry is the board state BEFORE that swipe.
  final List<GameBoardEntity> _undoHistory = [];
  static const int _maxUndoHistory = 5;

  // ─── Started ───────────────────────────────────────────────────────────────

  Future<void> _onStarted(Emitter<GameState> emit) async {
    emit(state.copyWith(status: GameStatus.loading));

    final bestScoreResult = await _getBestScore();
    final bestScore = bestScoreResult.fold((_) => 0, (s) => s);

    final persistedResult = await _getUnlockedLevels();
    persistedResult.fold((_) {}, (levels) => _unlockedLevels.addAll(levels));

    final savedResult = await _loadGameState();
    final savedBoard = savedResult.fold((_) => null, (b) => b);

    final GameBoardEntity board;
    if (savedBoard != null) {
      board = savedBoard.copyWith(bestScore: bestScore);
      _seedUnlockedLevels(board);
    } else {
      board = GameLogic.createInitialBoard(bestScore);
    }

    emit(state.copyWith(
      status: board.isGameOver ? GameStatus.gameOver : GameStatus.playing,
      board: board,
      undoCount: _powerUps.undoCount,
      swapCount: _powerUps.swapCount,
      deleteCount: _powerUps.deleteCount,
    ));
  }

  // ─── Swipe ─────────────────────────────────────────────────────────────────

  Future<void> _onSwiped(SwipeDirection direction, Emitter<GameState> emit) async {
    final current = state.board;
    if (current == null) return;
    if (state.status != GameStatus.playing) return;
    if (state.showingDiscovery) return;
    // Cancel any active power-up mode on swipe.
    if (state.activePowerUp != ActivePowerUp.none) {
      emit(state.copyWith(
          activePowerUp: ActivePowerUp.none,
          swapFirstRow: null,
          swapFirstCol: null));
    }

    final cleanGrid = GameLogic.clearAnimationFlags(current.grid);

    // Save board for undo BEFORE modifying.
    _pushUndoHistory(current);

    final result = GameLogic.swipe(cleanGrid, direction);
    if (!result.moved) {
      _undoHistory.removeLast(); // didn't actually move
      return;
    }

    final newGrid = GameLogic.spawnTile(result.grid);
    final newScore = current.score + result.scoreGained;
    final newBest = max(newScore, current.bestScore);

    if (newBest > current.bestScore) await _saveBestScore(newBest);

    // Discover new animals & apply power-up milestones.
    final newDiscoveries = <int>[];
    String? milestoneMessage;
    for (final lvl in result.newlyDiscoveredLevels) {
      if (!_unlockedLevels.contains(lvl)) {
        newDiscoveries.add(lvl);
        await _unlockAnimal(lvl);
        final msg = await _powerUps.applyMilestone(lvl);
        if (msg != null) milestoneMessage = msg;
      }
    }
    _unlockedLevels.addAll(result.newlyDiscoveredLevels);

    // Lucky merge → 10% chance for a random power-up.
    if (result.hadLuckyMerge && Random().nextDouble() < 0.10) {
      final type = await _powerUps.addRandom();
      milestoneMessage = '+1 ${type[0].toUpperCase()}${type.substring(1)} (Lucky!)';
    }

    final isGameOver = GameLogic.isGameOver(newGrid);
    final isWon = !state.continueAfterWin && GameLogic.hasWon(newGrid);

    if (isGameOver) await _lives.consumeLife();

    final newBoard = current.copyWith(
      grid: newGrid,
      score: newScore,
      bestScore: newBest,
      isGameOver: isGameOver,
      isWon: isWon,
    );
    await _saveGameState(newBoard);

    // Sounds.
    if (isWon) {
      _sound.playWin();
    } else if (isGameOver) {
      _sound.playGameOver();
    } else if (newDiscoveries.isNotEmpty) {
      _sound.playDiscover();
    } else if (result.scoreGained > 0) {
      _sound.playMerge();
    }

    final nextDiscovery = newDiscoveries.isNotEmpty ? newDiscoveries.last : null;
    final nextStatus = isWon
        ? GameStatus.won
        : isGameOver
            ? GameStatus.gameOver
            : GameStatus.playing;

    emit(state.copyWith(
      status: nextStatus,
      board: newBoard,
      newlyDiscoveredLevel: nextDiscovery,
      showingDiscovery: nextDiscovery != null,
      undoCount: _powerUps.undoCount,
      swapCount: _powerUps.swapCount,
      deleteCount: _powerUps.deleteCount,
      powerUpEarned: milestoneMessage,
    ));
  }

  // ─── Reset ─────────────────────────────────────────────────────────────────

  Future<void> _onReset(Emitter<GameState> emit) async {
    emit(state.copyWith(status: GameStatus.loading));
    await _resetGame();

    final bestScoreResult = await _getBestScore();
    final bestScore = bestScoreResult.fold((_) => 0, (s) => s);
    final board = GameLogic.createInitialBoard(bestScore);

    _unlockedLevels
      ..clear()
      ..addAll([1, 2]);
    _undoHistory.clear();

    emit(state.copyWith(
      status: GameStatus.playing,
      board: board,
      newlyDiscoveredLevel: null,
      showingDiscovery: false,
      continueAfterWin: false,
      activePowerUp: ActivePowerUp.none,
      swapFirstRow: null,
      swapFirstCol: null,
      powerUpEarned: null,
      undoCount: _powerUps.undoCount,
      swapCount: _powerUps.swapCount,
      deleteCount: _powerUps.deleteCount,
    ));
  }

  void _onDiscoveryDismissed(Emitter<GameState> emit) {
    emit(state.copyWith(showingDiscovery: false, newlyDiscoveredLevel: null));
  }

  void _onContinueAfterWin(Emitter<GameState> emit) {
    emit(state.copyWith(
      status: GameStatus.playing,
      continueAfterWin: true,
      board: state.board?.copyWith(isWon: false),
    ));
  }

  // ─── Undo ──────────────────────────────────────────────────────────────────

  Future<void> _onUndoPressed(Emitter<GameState> emit) async {
    if (state.status != GameStatus.playing) return;
    if (_undoHistory.isEmpty) return;

    final spent = await _powerUps.useUndo();
    if (!spent) return;

    final previous = _undoHistory.removeLast();
    final newBoard = previous.copyWith(
      bestScore: state.board?.bestScore ?? previous.bestScore,
    );
    await _saveGameState(newBoard);

    emit(state.copyWith(
      board: newBoard,
      undoCount: _powerUps.undoCount,
      activePowerUp: ActivePowerUp.none,
      swapFirstRow: null,
      swapFirstCol: null,
    ));
  }

  // ─── Swap ──────────────────────────────────────────────────────────────────

  void _onSwapActivated(Emitter<GameState> emit) {
    if (state.status != GameStatus.playing) return;
    if (_powerUps.swapCount <= 0) return;
    emit(state.copyWith(
      activePowerUp: ActivePowerUp.swap,
      swapFirstRow: null,
      swapFirstCol: null,
    ));
  }

  // ─── Delete ────────────────────────────────────────────────────────────────

  void _onDeleteActivated(Emitter<GameState> emit) {
    if (state.status != GameStatus.playing) return;
    if (_powerUps.deleteCount <= 0) return;
    emit(state.copyWith(
      activePowerUp: ActivePowerUp.delete,
      swapFirstRow: null,
      swapFirstCol: null,
    ));
  }

  // ─── Tile selected ─────────────────────────────────────────────────────────

  Future<void> _onTileSelected(int row, int col, Emitter<GameState> emit) async {
    final board = state.board;
    if (board == null) return;

    switch (state.activePowerUp) {
      case ActivePowerUp.delete:
        final spent = await _powerUps.useDelete();
        if (!spent) {
          emit(state.copyWith(activePowerUp: ActivePowerUp.none));
          return;
        }
        final newGrid = GameLogic.deleteTile(board.grid, row, col);
        final newBoard = board.copyWith(grid: newGrid);
        await _saveGameState(newBoard);
        emit(state.copyWith(
          board: newBoard,
          activePowerUp: ActivePowerUp.none,
          deleteCount: _powerUps.deleteCount,
        ));

      case ActivePowerUp.swap:
        final firstRow = state.swapFirstRow;
        final firstCol = state.swapFirstCol;

        if (firstRow == null || firstCol == null) {
          // First tile selected.
          emit(state.copyWith(swapFirstRow: row, swapFirstCol: col));
        } else if (firstRow == row && firstCol == col) {
          // Tapped the same tile — deselect.
          emit(state.copyWith(swapFirstRow: null, swapFirstCol: null));
        } else {
          // Second tile — execute swap.
          final spent = await _powerUps.useSwap();
          if (!spent) {
            emit(state.copyWith(
                activePowerUp: ActivePowerUp.none,
                swapFirstRow: null,
                swapFirstCol: null));
            return;
          }
          final newGrid =
              GameLogic.swapTiles(board.grid, firstRow, firstCol, row, col);
          final newBoard = board.copyWith(grid: newGrid);
          await _saveGameState(newBoard);
          emit(state.copyWith(
            board: newBoard,
            activePowerUp: ActivePowerUp.none,
            swapFirstRow: null,
            swapFirstCol: null,
            swapCount: _powerUps.swapCount,
          ));
        }

      case ActivePowerUp.none:
        break;
    }
  }

  void _onPowerUpCancelled(Emitter<GameState> emit) {
    emit(state.copyWith(
      activePowerUp: ActivePowerUp.none,
      swapFirstRow: null,
      swapFirstCol: null,
    ));
  }

  void _onPowerUpNotified(Emitter<GameState> emit) {
    emit(state.copyWith(powerUpEarned: null));
  }

  // ─── Helpers ───────────────────────────────────────────────────────────────

  void _seedUnlockedLevels(GameBoardEntity board) {
    for (final row in board.grid) {
      for (final tile in row) {
        if (tile != null) _unlockedLevels.add(tile.level);
      }
    }
  }

  void _pushUndoHistory(GameBoardEntity board) {
    _undoHistory.add(board);
    if (_undoHistory.length > _maxUndoHistory) {
      _undoHistory.removeAt(0);
    }
  }
}
