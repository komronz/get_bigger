// lib/features/collection/domain/usecases/get_collection_usecase.dart

import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/collection_entry_entity.dart';
import '../repositories/collection_repository.dart';

class GetCollectionUseCase {
  const GetCollectionUseCase(this._repository);
  final CollectionRepository _repository;

  Future<Either<Failure, List<CollectionEntryEntity>>> call() =>
      _repository.getCollection();
}
