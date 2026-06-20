// lib/features/game/domain/usecases/get_best_score_usecase.dart

import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/game_repository.dart';

class GetBestScoreUseCase {
  const GetBestScoreUseCase(this._repository);
  final GameRepository _repository;

  Future<Either<Failure, int>> call() => _repository.getBestScore();
}
