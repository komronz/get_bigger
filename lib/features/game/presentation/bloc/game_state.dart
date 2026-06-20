// lib/features/game/presentation/bloc/game_state.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/game_board_entity.dart';

part 'game_state.freezed.dart';

enum GameStatus { initial, loading, playing, paused, gameOver, won, error }

/// Which power-up mode is currently waiting for a tile tap.
enum ActivePowerUp { none, swap, delete }

@freezed
abstract class GameState with _$GameState {
  const factory GameState({
    @Default(GameStatus.initial) GameStatus status,
    GameBoardEntity? board,
    int? newlyDiscoveredLevel,
    @Default(false) bool showingDiscovery,
    @Default(false) bool continueAfterWin,
    String? errorMessage,
    // ── Power-ups ────────────────────────────────────────────────────────────
    @Default(1) int undoCount,
    @Default(1) int swapCount,
    @Default(1) int deleteCount,
    @Default(ActivePowerUp.none) ActivePowerUp activePowerUp,
    int? swapFirstRow,
    int? swapFirstCol,
    // Transient notification shown as a snackbar (e.g. "Undo unlocked!")
    String? powerUpEarned,
  }) = _GameState;

  factory GameState.initial() => const GameState(status: GameStatus.initial);
}
