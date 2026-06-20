// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_board_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameBoardModel _$GameBoardModelFromJson(Map<String, dynamic> json) =>
    GameBoardModel(
      score: (json['score'] as num).toInt(),
      bestScore: (json['bestScore'] as num).toInt(),
      tiles: (json['tiles'] as List<dynamic>)
          .map((e) => TileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isGameOver: json['isGameOver'] as bool,
      isWon: json['isWon'] as bool,
    );

Map<String, dynamic> _$GameBoardModelToJson(GameBoardModel instance) =>
    <String, dynamic>{
      'score': instance.score,
      'bestScore': instance.bestScore,
      'tiles': instance.tiles,
      'isGameOver': instance.isGameOver,
      'isWon': instance.isWon,
    };
