// lib/features/game/domain/entities/tile_entity.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tile_entity.freezed.dart';

enum TileSpecialType {
  none,
  golden,    // wildcard — merges with any level, 2× score
  lucky,     // 2× score, 10% chance to award a power-up on merge
  sleeping,  // stuck for 1 turn
  rock,      // immovable blocker, removed only by Delete power-up
  spiderWeb, // stuck for 3 turns
}

@freezed
abstract class TileEntity with _$TileEntity {
  const factory TileEntity({
    required String id,
    required int level,
    @Default(false) bool isNew,
    @Default(false) bool isMerged,
    @Default(TileSpecialType.none) TileSpecialType specialType,
    @Default(0) int stuckTurnsRemaining,
  }) = _TileEntity;
}
