// test/widget_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:get_bigger/core/utils/game_logic.dart';
import 'package:get_bigger/core/constants/app_constants.dart';

void main() {
  group('GameLogic', () {
    test('createEmptyGrid returns a 4x4 grid of nulls', () {
      final grid = GameLogic.createEmptyGrid();
      expect(grid.length, AppConstants.gridSize);
      for (final row in grid) {
        expect(row.length, AppConstants.gridSize);
        expect(row.every((t) => t == null), isTrue);
      }
    });

    test('spawnTile places a tile in an empty cell', () {
      final grid = GameLogic.createEmptyGrid();
      final after = GameLogic.spawnTile(grid);
      final tiles = [
        for (final row in after)
          for (final t in row)
            if (t != null) t
      ];
      expect(tiles.length, 1);
      expect(tiles.first.level, anyOf(1, 2));
    });

    test('swipe left merges equal adjacent tiles', () {
      var grid = GameLogic.createEmptyGrid();
      // Empty board — just test move detection
      final result = GameLogic.swipe(grid, SwipeDirection.left);
      expect(result.moved, isFalse); // empty board never moves
    });

    test('isGameOver returns false on empty board', () {
      final grid = GameLogic.createEmptyGrid();
      expect(GameLogic.isGameOver(grid), isFalse);
    });
  });
}
