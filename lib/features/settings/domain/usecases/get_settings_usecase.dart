// lib/features/settings/domain/usecases/get_settings_usecase.dart

import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/settings_entity.dart';
import '../repositories/settings_repository.dart';

class GetSettingsUseCase {
  const GetSettingsUseCase(this._repository);
  final SettingsRepository _repository;

  Future<Either<Failure, SettingsEntity>> call() => _repository.getSettings();
}
