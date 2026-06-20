// lib/features/settings/domain/usecases/update_settings_usecase.dart

import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/settings_entity.dart';
import '../repositories/settings_repository.dart';

class UpdateSettingsUseCase {
  const UpdateSettingsUseCase(this._repository);
  final SettingsRepository _repository;

  Future<Either<Failure, Unit>> call(SettingsEntity settings) =>
      _repository.saveSettings(settings);
}
