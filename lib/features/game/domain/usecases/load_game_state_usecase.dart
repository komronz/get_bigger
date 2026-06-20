// lib/features/game/domain/usecases/load_game_state_usecase.dart

import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/game_board_entity.dart';
import '../repositories/game_repository.dart';

class LoadGameStateUseCase {
  const LoadGameStateUseCase(this._repository);
  final GameRepository _repository;

  Future<Either<Failure, GameBoardEntity?>> call() =>
      _repository.loadGameState();
}
