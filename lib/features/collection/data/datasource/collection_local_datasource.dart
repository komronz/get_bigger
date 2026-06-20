// lib/features/collection/data/datasource/collection_local_datasource.dart

import '../../../../core/constants/animal_constants.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/services/local_storage_service.dart';

abstract class CollectionLocalDataSource {
  Future<List<int>> getUnlockedLevels();
  Future<void> unlockLevel(int level);
}

class CollectionLocalDataSourceImpl implements CollectionLocalDataSource {
  const CollectionLocalDataSourceImpl(this._storage);

  final LocalStorageService _storage;

  @override
  Future<List<int>> getUnlockedLevels() async {
    try {
      final raw = await _storage.getStringList(AppConstants.kUnlockedAnimals);
      if (raw == null) return [1, 2]; // Ant and Ladybug unlocked by default
      return raw.map(int.parse).toList();
    } catch (e) {
      throw const CacheException('Failed to load unlocked animals');
    }
  }

  @override
  Future<void> unlockLevel(int level) async {
    try {
      final current = await getUnlockedLevels();
      if (!current.contains(level)) {
        final updated = [...current, level];
        await _storage.setStringList(
          AppConstants.kUnlockedAnimals,
          updated.map((l) => l.toString()).toList(),
        );
      }
    } catch (e) {
      throw const CacheException('Failed to unlock animal');
    }
  }
}

extension CollectionDataSourceX on CollectionLocalDataSource {
  Future<List<({int level, bool isUnlocked})>> getFullCollection() async {
    final unlocked = await getUnlockedLevels();
    return kAnimals.map((a) {
      return (level: a.level, isUnlocked: unlocked.contains(a.level));
    }).toList();
  }
}
