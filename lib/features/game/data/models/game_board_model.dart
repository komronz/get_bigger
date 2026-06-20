// lib/features/game/data/models/game_board_model.dart

import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/game_board_entity.dart';
import '../../domain/entities/tile_entity.dart';
import '../../../../core/constants/app_constants.dart';
import 'tile_model.dart';

part 'game_board_model.g.dart';

@JsonSerializable()
class GameBoardModel {
  const GameBoardModel({
    required this.score,
    required this.bestScore,
    required this.tiles,
    required this.isGameOver,
    required this.isWon,
  });

  final int score;
  final int bestScore;
  final List<TileModel> tiles;
  final bool isGameOver;
  final bool isWon;

  factory GameBoardModel.fromJson(Map<String, dynamic> json) =>
      _$GameBoardModelFromJson(json);

  Map<String, dynamic> toJson() => _$GameBoardModelToJson(this);

  factory GameBoardModel.fromEntity(GameBoardEntity entity) {
    final tiles = <TileModel>[];
    for (int r = 0; r < AppConstants.gridSize; r++) {
      for (int c = 0; c < AppConstants.gridSize; c++) {
        final tile = entity.grid[r][c];
        if (tile != null) {
          tiles.add(TileModel.fromEntity(tile, r, c));
        }
      }
    }
    return GameBoardModel(
      score: entity.score,
      bestScore: entity.bestScore,
      tiles: tiles,
      isGameOver: entity.isGameOver,
      isWon: entity.isWon,
    );
  }

  GameBoardEntity toEntity() {
    final grid = List.generate(
      AppConstants.gridSize,
      (_) => List<TileEntity?>.filled(AppConstants.gridSize, null),
    );
    for (final tile in tiles) {
      if (tile.row < AppConstants.gridSize && tile.col < AppConstants.gridSize) {
        grid[tile.row][tile.col] = tile.toEntity();
      }
    }
    return GameBoardEntity(
      grid: grid,
      score: score,
      bestScore: bestScore,
      isGameOver: isGameOver,
      isWon: isWon,
    );
  }
}
