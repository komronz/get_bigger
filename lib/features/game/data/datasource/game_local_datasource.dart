// lib/features/game/data/datasource/game_local_datasource.dart

import 'dart:convert';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/services/local_storage_service.dart';
import '../models/game_board_model.dart';

abstract class GameLocalDataSource {
  Future<int> getBestScore();
  Future<void> saveBestScore(int score);
  Future<GameBoardModel?> loadGameState();
  Future<void> saveGameState(GameBoardModel model);
  Future<void> resetGameState();
}

class GameLocalDataSourceImpl implements GameLocalDataSource {
  const GameLocalDataSourceImpl(this._storage);

  final LocalStorageService _storage;

  @override
  Future<int> getBestScore() async {
    try {
      return await _storage.getInt(AppConstants.kBestScore) ?? 0;
    } on CacheException {
      rethrow;
    } catch (e) {
      throw const CacheException('Failed to get best score');
    }
  }

  @override
  Future<void> saveBestScore(int score) async {
    try {
      await _storage.setInt(AppConstants.kBestScore, score);
    } catch (e) {
      throw const CacheException('Failed to save best score');
    }
  }

  @override
  Future<GameBoardModel?> loadGameState() async {
    try {
      final json = await _storage.getString(AppConstants.kGameState);
      if (json == null) return null;
      return GameBoardModel.fromJson(
        jsonDecode(json) as Map<String, dynamic>,
      );
    } catch (e) {
      throw const CacheException('Failed to load game state');
    }
  }

  @override
  Future<void> saveGameState(GameBoardModel model) async {
    try {
      final json = jsonEncode(model.toJson());
      await _storage.setString(AppConstants.kGameState, json);
    } catch (e) {
      throw const CacheException('Failed to save game state');
    }
  }

  @override
  Future<void> resetGameState() async {
    try {
      await _storage.remove(AppConstants.kGameState);
    } catch (e) {
      throw const CacheException('Failed to reset game state');
    }
  }
}
