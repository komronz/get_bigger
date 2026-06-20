// lib/features/settings/data/repositories/settings_repository_impl.dart

import 'package:dartz/dartz.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/settings_entity.dart';
import '../../domain/repositories/settings_repository.dart';
import '../datasource/settings_local_datasource.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  const SettingsRepositoryImpl(this._dataSource);

  final SettingsLocalDataSource _dataSource;

  @override
  Future<Either<Failure, SettingsEntity>> getSettings() async {
    try {
      final raw = await _dataSource.getSettings();
      return Right(SettingsEntity(soundEnabled: raw.soundEnabled));
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, Unit>> saveSettings(SettingsEntity settings) async {
    try {
      await _dataSource.saveSettings(soundEnabled: settings.soundEnabled);
      return const Right(unit);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }
}
