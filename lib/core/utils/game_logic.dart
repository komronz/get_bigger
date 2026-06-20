// lib/core/utils/game_logic.dart

import 'dart:math';
import 'package:uuid/uuid.dart';
import '../../features/game/domain/entities/tile_entity.dart';
import '../../features/game/domain/entities/game_board_entity.dart';
import '../constants/app_constants.dart';

const _uuid = Uuid();

typedef GameGrid = List<List<TileEntity?>>;

class SwipeResult {
  const SwipeResult({
    required this.grid,
    required this.scoreGained,
    required this.moved,
    required this.newlyDiscoveredLevels,
    this.hadLuckyMerge = false,
  });

  final GameGrid grid;
  final int scoreGained;
  final bool moved;
  final Set<int> newlyDiscoveredLevels;
  final bool hadLuckyMerge;
}

class GameLogic {
  GameLogic._();

  // ─── Grid helpers ──────────────────────────────────────────────────────────

  static GameGrid createEmptyGrid() {
    return List.generate(
      AppConstants.gridSize,
      (_) => List.filled(AppConstants.gridSize, null),
    );
  }

  static GameGrid deepCopyGrid(GameGrid grid) {
    return grid.map((row) => List<TileEntity?>.from(row)).toList();
  }

  static GameGrid clearAnimationFlags(GameGrid grid) {
    return grid.map((row) {
      return row.map((tile) {
        if (tile == null) return null;
        return tile.copyWith(isNew: false, isMerged: false);
      }).toList();
    }).toList();
  }

  /// Decrement stuck counters after each swipe.
  /// Rocks are permanent until explicitly deleted.
  static GameGrid decrementStuckTurns(GameGrid grid) {
    return grid.map((row) {
      return row.map((tile) {
        if (tile == null) return null;
        if (tile.stuckTurnsRemaining <= 0) return tile;
        if (tile.specialType == TileSpecialType.rock) return tile;
        final newTurns = tile.stuckTurnsRemaining - 1;
        return tile.copyWith(
          stuckTurnsRemaining: newTurns,
          specialType: newTurns == 0 ? TileSpecialType.none : tile.specialType,
        );
      }).toList();
    }).toList();
  }

  // ─── Tile spawning ─────────────────────────────────────────────────────────

  static GameGrid spawnTile(GameGrid grid, {Random? random}) {
    final rng = random ?? Random();
    final emptyCells = <({int row, int col})>[];

    for (int r = 0; r < AppConstants.gridSize; r++) {
      for (int c = 0; c < AppConstants.gridSize; c++) {
        if (grid[r][c] == null) emptyCells.add((row: r, col: c));
      }
    }
    if (emptyCells.isEmpty) return grid;

    final pos = emptyCells[rng.nextInt(emptyCells.length)];
    final maxLevel = _maxLevelOnBoard(grid);
    final tile = _chooseTileToSpawn(rng, maxLevel);

    final newGrid = deepCopyGrid(grid);
    newGrid[pos.row][pos.col] = tile;
    return newGrid;
  }

  static int _maxLevelOnBoard(GameGrid grid) {
    var maxLvl = 0;
    for (final row in grid) {
      for (final tile in row) {
        if (tile != null && tile.level > maxLvl) maxLvl = tile.level;
      }
    }
    return maxLvl;
  }

  static TileEntity _chooseTileToSpawn(Random rng, int maxLevel) {
    double roll = rng.nextDouble();
    double cursor = 0;

    // Special animals (golden / lucky / sleeping) — any difficulty.
    cursor += AppConstants.specialAnimalChance;
    if (roll < cursor) return _spawnSpecialAnimal(rng, maxLevel);

    // Spider Web trap — mid-game.
    if (maxLevel >= AppConstants.midGameLevel) {
      cursor += AppConstants.trapWebChance;
      if (roll < cursor) {
        return TileEntity(
          id: _uuid.v4(),
          level: 1,
          isNew: true,
          specialType: TileSpecialType.spiderWeb,
          stuckTurnsRemaining: 3,
        );
      }
    }

    // Rock trap — late-game.
    if (maxLevel >= AppConstants.lateGameLevel) {
      cursor += AppConstants.trapRockChance;
      if (roll < cursor) {
        return TileEntity(
          id: _uuid.v4(),
          level: 0,
          isNew: true,
          specialType: TileSpecialType.rock,
          stuckTurnsRemaining: 999,
        );
      }
    }

    // Normal tile.
    final level = rng.nextDouble() < AppConstants.level2SpawnChance ? 2 : 1;
    return TileEntity(id: _uuid.v4(), level: level, isNew: true);
  }

  static TileEntity _spawnSpecialAnimal(Random rng, int maxLevel) {
    final spawnLevel = maxLevel.clamp(1, AppConstants.maxTileLevel - 2);
    final r = rng.nextDouble();
    final type = r < 0.50
        ? TileSpecialType.golden
        : r < 0.80
            ? TileSpecialType.lucky
            : TileSpecialType.sleeping;
    return TileEntity(
      id: _uuid.v4(),
      level: spawnLevel,
      isNew: true,
      specialType: type,
      stuckTurnsRemaining: type == TileSpecialType.sleeping ? 1 : 0,
    );
  }

  // ─── Swipe logic ───────────────────────────────────────────────────────────

  static SwipeResult swipe(GameGrid grid, SwipeDirection direction) {
    final transformed = _transformForDirection(grid, direction);
    final result = _processAllRows(transformed);
    var restored = _restoreFromDirection(result.grid, direction);
    restored = decrementStuckTurns(restored);

    return SwipeResult(
      grid: restored,
      scoreGained: result.scoreGained,
      moved: result.moved,
      newlyDiscoveredLevels: result.newlyDiscoveredLevels,
      hadLuckyMerge: result.hadLuckyMerge,
    );
  }

  static GameGrid _transformForDirection(GameGrid grid, SwipeDirection dir) {
    switch (dir) {
      case SwipeDirection.left:
        return deepCopyGrid(grid);
      case SwipeDirection.right:
        return _reverseRows(grid);
      case SwipeDirection.up:
        return _transpose(grid);
      case SwipeDirection.down:
        return _reverseRows(_transpose(grid));
    }
  }

  static GameGrid _restoreFromDirection(GameGrid grid, SwipeDirection dir) {
    switch (dir) {
      case SwipeDirection.left:
        return grid;
      case SwipeDirection.right:
        return _reverseRows(grid);
      case SwipeDirection.up:
        return _transpose(grid);
      case SwipeDirection.down:
        return _transpose(_reverseRows(grid));
    }
  }

  static GameGrid _transpose(GameGrid grid) {
    final size = AppConstants.gridSize;
    return List.generate(size, (r) => List.generate(size, (c) => grid[c][r]));
  }

  static GameGrid _reverseRows(GameGrid grid) {
    return grid.map((row) => row.reversed.toList()).toList();
  }

  static ({
    GameGrid grid,
    int scoreGained,
    bool moved,
    Set<int> newlyDiscoveredLevels,
    bool hadLuckyMerge,
  }) _processAllRows(GameGrid grid) {
    var totalScore = 0;
    var moved = false;
    var luckyMerge = false;
    final discovered = <int>{};
    final newGrid = <List<TileEntity?>>[];

    for (final row in grid) {
      final r = _processRow(row);
      newGrid.add(r.row);
      totalScore += r.score;
      if (r.moved) moved = true;
      if (r.luckyMerge) luckyMerge = true;
      discovered.addAll(r.newLevels);
    }

    return (
      grid: newGrid,
      scoreGained: totalScore,
      moved: moved,
      newlyDiscoveredLevels: discovered,
      hadLuckyMerge: luckyMerge,
    );
  }

  /// Processes one row (already oriented for "swipe left").
  /// Rocks and stuck tiles act as fixed dividers; each segment between
  /// them is processed independently by [_processSegment].
  static ({
    List<TileEntity?> row,
    int score,
    bool moved,
    Set<int> newLevels,
    bool luckyMerge,
  }) _processRow(List<TileEntity?> original) {
    final fixedAt = <int>[];
    for (int i = 0; i < original.length; i++) {
      final t = original[i];
      if (t != null && _isFixed(t)) fixedAt.add(i);
    }

    if (fixedAt.isEmpty) {
      return _processSegment(original);
    }

    final result = List<TileEntity?>.filled(original.length, null);
    for (final idx in fixedAt) {
      result[idx] = original[idx];
    }

    var totalScore = 0;
    var anyMoved = false;
    var anyLucky = false;
    final allNewLevels = <int>{};

    // Collect segment start/end boundaries.
    final starts = [0, ...fixedAt.map((i) => i + 1)];
    final ends = [...fixedAt, original.length];

    for (int s = 0; s < starts.length; s++) {
      final from = starts[s];
      final to = ends[s]; // exclusive
      if (from >= to) continue;

      final segIndices = [
        for (int i = from; i < to; i++)
          if (!fixedAt.contains(i)) i
      ];
      if (segIndices.isEmpty) continue;

      final seg = segIndices.map((i) => original[i]).toList();
      final res = _processSegment(seg);
      totalScore += res.score;
      if (res.moved) anyMoved = true;
      if (res.luckyMerge) anyLucky = true;
      allNewLevels.addAll(res.newLevels);
      for (int j = 0; j < segIndices.length; j++) {
        result[segIndices[j]] = res.row[j];
      }
    }

    if (!anyMoved) {
      for (int i = 0; i < original.length; i++) {
        if (result[i]?.id != original[i]?.id) {
          anyMoved = true;
          break;
        }
      }
    }

    return (
      row: result,
      score: totalScore,
      moved: anyMoved,
      newLevels: allNewLevels,
      luckyMerge: anyLucky,
    );
  }

  /// Merge algorithm for a contiguous segment of non-fixed tiles.
  static ({
    List<TileEntity?> row,
    int score,
    bool moved,
    Set<int> newLevels,
    bool luckyMerge,
  }) _processSegment(List<TileEntity?> seg) {
    final packed =
        seg.whereType<TileEntity>().where((t) => !_isFixed(t)).toList();

    var score = 0;
    var luckyMerge = false;
    final newLevels = <int>{};
    final merged = <TileEntity>[];
    var i = 0;

    while (i < packed.length) {
      if (i < packed.length - 1) {
        final a = packed[i];
        final b = packed[i + 1];
        final isGolden = a.specialType == TileSpecialType.golden ||
            b.specialType == TileSpecialType.golden;
        final canMerge =
            (a.level == b.level && a.level > 0 && !isGolden) || isGolden;

        if (canMerge) {
          final newLevel =
              (max(a.level, b.level) + 1).clamp(1, AppConstants.maxTileLevel);
          final isLucky = a.specialType == TileSpecialType.lucky ||
              b.specialType == TileSpecialType.lucky;
          final mult = (isGolden ? 2 : 1) * (isLucky ? 2 : 1);
          score += newLevel * AppConstants.scoreMultiplier * mult;
          if (isLucky) luckyMerge = true;
          newLevels.add(newLevel);
          merged.add(TileEntity(
            id: _uuid.v4(),
            level: newLevel,
            isNew: false,
            isMerged: true,
          ));
          i += 2;
          continue;
        }
      }
      merged.add(packed[i]);
      i++;
    }

    final resultRow = List<TileEntity?>.from(merged);
    while (resultRow.length < seg.length) {
      resultRow.add(null);
    }

    bool moved = packed.length != merged.length;
    if (!moved) {
      for (int k = 0; k < resultRow.length; k++) {
        if (resultRow[k]?.level != seg[k]?.level) {
          moved = true;
          break;
        }
      }
    }

    return (
      row: resultRow,
      score: score,
      moved: moved,
      newLevels: newLevels,
      luckyMerge: luckyMerge,
    );
  }

  static bool _isFixed(TileEntity tile) {
    return tile.specialType == TileSpecialType.rock ||
        tile.stuckTurnsRemaining > 0;
  }

  // ─── Win / game-over ───────────────────────────────────────────────────────

  static bool isGameOver(GameGrid grid) {
    for (final row in grid) {
      if (row.any((t) => t == null)) return false;
    }
    for (int r = 0; r < AppConstants.gridSize; r++) {
      for (int c = 0; c < AppConstants.gridSize - 1; c++) {
        if (_canMergePair(grid[r][c], grid[r][c + 1])) return false;
      }
    }
    for (int r = 0; r < AppConstants.gridSize - 1; r++) {
      for (int c = 0; c < AppConstants.gridSize; c++) {
        if (_canMergePair(grid[r][c], grid[r + 1][c])) return false;
      }
    }
    return true;
  }

  static bool _canMergePair(TileEntity? a, TileEntity? b) {
    if (a == null || b == null) return false;
    if (_isFixed(a) || _isFixed(b)) return false;
    if (a.specialType == TileSpecialType.golden && b.level > 0) return true;
    if (b.specialType == TileSpecialType.golden && a.level > 0) return true;
    return a.level == b.level && a.level > 0;
  }

  static bool hasWon(GameGrid grid) {
    for (final row in grid) {
      for (final tile in row) {
        if (tile != null && tile.level >= AppConstants.winTileLevel) return true;
      }
    }
    return false;
  }

  // ─── Power-up grid helpers ─────────────────────────────────────────────────

  static GameGrid swapTiles(GameGrid grid, int r1, int c1, int r2, int c2) {
    final g = deepCopyGrid(grid);
    final tmp = g[r1][c1];
    g[r1][c1] = g[r2][c2];
    g[r2][c2] = tmp;
    return g;
  }

  static GameGrid deleteTile(GameGrid grid, int row, int col) {
    final g = deepCopyGrid(grid);
    g[row][col] = null;
    return g;
  }

  // ─── Initial board ─────────────────────────────────────────────────────────

  static GameBoardEntity createInitialBoard(int bestScore) {
    var grid = createEmptyGrid();
    grid = spawnTile(grid);
    grid = spawnTile(grid);
    return GameBoardEntity(
      grid: grid,
      score: 0,
      bestScore: bestScore,
      isGameOver: false,
      isWon: false,
    );
  }
}

enum SwipeDirection { left, right, up, down }
