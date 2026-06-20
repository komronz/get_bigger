// lib/features/settings/data/datasource/settings_local_datasource.dart

import '../../../../core/constants/app_constants.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/services/local_storage_service.dart';

abstract class SettingsLocalDataSource {
  Future<({bool soundEnabled})> getSettings();
  Future<void> saveSettings({required bool soundEnabled});
}

class SettingsLocalDataSourceImpl implements SettingsLocalDataSource {
  const SettingsLocalDataSourceImpl(this._storage);

  final LocalStorageService _storage;

  @override
  Future<({bool soundEnabled})> getSettings() async {
    try {
      final sound = await _storage.getBool(AppConstants.kSoundEnabled) ?? true;
      return (soundEnabled: sound);
    } catch (e) {
      throw const CacheException('Failed to load settings');
    }
  }

  @override
  Future<void> saveSettings({required bool soundEnabled}) async {
    try {
      await _storage.setBool(AppConstants.kSoundEnabled, soundEnabled);
    } catch (e) {
      throw const CacheException('Failed to save settings');
    }
  }
}
