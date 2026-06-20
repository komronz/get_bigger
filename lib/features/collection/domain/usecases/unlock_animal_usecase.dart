// lib/features/collection/domain/usecases/unlock_animal_usecase.dart

import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/collection_repository.dart';

class UnlockAnimalUseCase {
  const UnlockAnimalUseCase(this._repository);
  final CollectionRepository _repository;

  Future<Either<Failure, Unit>> call(int level) =>
      _repository.unlockAnimal(level);
}
