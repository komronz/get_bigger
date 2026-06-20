// lib/features/collection/domain/repositories/collection_repository.dart

import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/collection_entry_entity.dart';

abstract class CollectionRepository {
  Future<Either<Failure, List<CollectionEntryEntity>>> getCollection();
  Future<Either<Failure, Unit>> unlockAnimal(int level);
  Future<Either<Failure, Set<int>>> getUnlockedLevels();
}
