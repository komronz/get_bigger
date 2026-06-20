// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TileModel _$TileModelFromJson(Map<String, dynamic> json) => TileModel(
  id: json['id'] as String,
  level: (json['level'] as num).toInt(),
  row: (json['row'] as num).toInt(),
  col: (json['col'] as num).toInt(),
  specialType: json['specialType'] == null
      ? TileSpecialType.none
      : TileModel._specialTypeFromJson(json['specialType']),
  stuckTurnsRemaining: (json['stuckTurnsRemaining'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$TileModelToJson(TileModel instance) => <String, dynamic>{
  'id': instance.id,
  'level': instance.level,
  'row': instance.row,
  'col': instance.col,
  'specialType': TileModel._specialTypeToJson(instance.specialType),
  'stuckTurnsRemaining': instance.stuckTurnsRemaining,
};
