// lib/features/game/domain/usecases/save_best_score_usecase.dart

import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/game_repository.dart';

class SaveBestScoreUseCase {
  const SaveBestScoreUseCase(this._repository);
  final GameRepository _repository;

  Future<Either<Failure, Unit>> call(int score) =>
      _repository.saveBestScore(score);
}
