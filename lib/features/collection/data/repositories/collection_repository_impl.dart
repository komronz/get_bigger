// lib/features/collection/data/repositories/collection_repository_impl.dart

import 'package:dartz/dartz.dart';
import '../../../../core/constants/animal_constants.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/collection_entry_entity.dart';
import '../../domain/repositories/collection_repository.dart';
import '../datasource/collection_local_datasource.dart';

class CollectionRepositoryImpl implements CollectionRepository {
  const CollectionRepositoryImpl(this._dataSource);

  final CollectionLocalDataSource _dataSource;

  @override
  Future<Either<Failure, List<CollectionEntryEntity>>> getCollection() async {
    try {
      final unlockedLevels = await _dataSource.getUnlockedLevels();
      final entries = kAnimals.map((animal) {
        return CollectionEntryEntity(
          level: animal.level,
          isUnlocked: unlockedLevels.contains(animal.level),
        );
      }).toList();
      return Right(entries);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, Unit>> unlockAnimal(int level) async {
    try {
      await _dataSource.unlockLevel(level);
      return const Right(unit);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, Set<int>>> getUnlockedLevels() async {
    try {
      final levels = await _dataSource.getUnlockedLevels();
      return Right(levels.toSet());
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }
}
