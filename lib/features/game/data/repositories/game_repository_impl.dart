// lib/features/game/data/repositories/game_repository_impl.dart

import 'package:dartz/dartz.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/game_board_entity.dart';
import '../../domain/repositories/game_repository.dart';
import '../datasource/game_local_datasource.dart';
import '../models/game_board_model.dart';

class GameRepositoryImpl implements GameRepository {
  const GameRepositoryImpl(this._dataSource);

  final GameLocalDataSource _dataSource;

  @override
  Future<Either<Failure, int>> getBestScore() async {
    try {
      final score = await _dataSource.getBestScore();
      return Right(score);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, Unit>> saveBestScore(int score) async {
    try {
      await _dataSource.saveBestScore(score);
      return const Right(unit);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, GameBoardEntity?>> loadGameState() async {
    try {
      final model = await _dataSource.loadGameState();
      return Right(model?.toEntity());
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, Unit>> saveGameState(GameBoardEntity board) async {
    try {
      await _dataSource.saveGameState(GameBoardModel.fromEntity(board));
      return const Right(unit);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, Unit>> resetGameState() async {
    try {
      await _dataSource.resetGameState();
      return const Right(unit);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }
}
