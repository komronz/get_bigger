// lib/features/collection/domain/usecases/get_unlocked_levels_usecase.dart

import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/collection_repository.dart';

class GetUnlockedLevelsUseCase {
  const GetUnlockedLevelsUseCase(this._repository);
  final CollectionRepository _repository;

  Future<Either<Failure, Set<int>>> call() => _repository.getUnlockedLevels();
}
