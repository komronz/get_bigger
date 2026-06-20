// lib/features/game/data/models/tile_model.dart

import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/tile_entity.dart';

part 'tile_model.g.dart';

@JsonSerializable()
class TileModel {
  const TileModel({
    required this.id,
    required this.level,
    required this.row,
    required this.col,
    this.specialType = TileSpecialType.none,
    this.stuckTurnsRemaining = 0,
  });

  final String id;
  final int level;
  final int row;
  final int col;

  @JsonKey(toJson: _specialTypeToJson, fromJson: _specialTypeFromJson)
  final TileSpecialType specialType;

  final int stuckTurnsRemaining;

  factory TileModel.fromJson(Map<String, dynamic> json) =>
      _$TileModelFromJson(json);

  Map<String, dynamic> toJson() => _$TileModelToJson(this);

  factory TileModel.fromEntity(TileEntity entity, int row, int col) {
    return TileModel(
      id: entity.id,
      level: entity.level,
      row: row,
      col: col,
      specialType: entity.specialType,
      stuckTurnsRemaining: entity.stuckTurnsRemaining,
    );
  }

  TileEntity toEntity() {
    return TileEntity(
      id: id,
      level: level,
      isNew: false,
      isMerged: false,
      specialType: specialType,
      stuckTurnsRemaining: stuckTurnsRemaining,
    );
  }

  static String _specialTypeToJson(TileSpecialType t) => t.name;

  static TileSpecialType _specialTypeFromJson(dynamic value) {
    if (value == null) return TileSpecialType.none;
    return TileSpecialType.values.firstWhere(
      (e) => e.name == value,
      orElse: () => TileSpecialType.none,
    );
  }
}
