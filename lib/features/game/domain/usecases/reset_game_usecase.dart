// lib/features/game/domain/usecases/reset_game_usecase.dart

import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/game_repository.dart';

class ResetGameUseCase {
  const ResetGameUseCase(this._repository);
  final GameRepository _repository;

  Future<Either<Failure, Unit>> call() => _repository.resetGameState();
}
