// lib/features/game/domain/repositories/game_repository.dart

import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/game_board_entity.dart';

abstract class GameRepository {
  Future<Either<Failure, int>> getBestScore();
  Future<Either<Failure, Unit>> saveBestScore(int score);
  Future<Either<Failure, GameBoardEntity?>> loadGameState();
  Future<Either<Failure, Unit>> saveGameState(GameBoardEntity board);
  Future<Either<Failure, Unit>> resetGameState();
}
