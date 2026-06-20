// lib/features/game/domain/entities/game_board_entity.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'tile_entity.dart';

part 'game_board_entity.freezed.dart';

@freezed
abstract class GameBoardEntity with _$GameBoardEntity {
  const factory GameBoardEntity({
    required List<List<TileEntity?>> grid,
    required int score,
    required int bestScore,
    @Default(false) bool isGameOver,
    @Default(false) bool isWon,
  }) = _GameBoardEntity;
}
