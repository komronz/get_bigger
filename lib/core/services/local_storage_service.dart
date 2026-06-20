// lib/core/services/local_storage_service.dart

import 'package:shared_preferences/shared_preferences.dart';
import '../errors/exceptions.dart';

abstract class LocalStorageService {
  Future<void> setString(String key, String value);
  Future<String?> getString(String key);
  Future<void> setInt(String key, int value);
  Future<int?> getInt(String key);
  Future<void> setBool(String key, bool value);
  Future<bool?> getBool(String key);
  Future<void> setStringList(String key, List<String> value);
  Future<List<String>?> getStringList(String key);
  Future<void> remove(String key);
  Future<void> clear();
}

class LocalStorageServiceImpl implements LocalStorageService {
  const LocalStorageServiceImpl(this._prefs);

  final SharedPreferences _prefs;

  @override
  Future<void> setString(String key, String value) async {
    try {
      await _prefs.setString(key, value);
    } catch (e) {
      throw CacheException('Failed to write string for key: $key');
    }
  }

  @override
  Future<String?> getString(String key) async {
    try {
      return _prefs.getString(key);
    } catch (e) {
      throw CacheException('Failed to read string for key: $key');
    }
  }

  @override
  Future<void> setInt(String key, int value) async {
    try {
      await _prefs.setInt(key, value);
    } catch (e) {
      throw CacheException('Failed to write int for key: $key');
    }
  }

  @override
  Future<int?> getInt(String key) async {
    try {
      return _prefs.getInt(key);
    } catch (e) {
      throw CacheException('Failed to read int for key: $key');
    }
  }

  @override
  Future<void> setBool(String key, bool value) async {
    try {
      await _prefs.setBool(key, value);
    } catch (e) {
      throw CacheException('Failed to write bool for key: $key');
    }
  }

  @override
  Future<bool?> getBool(String key) async {
    try {
      return _prefs.getBool(key);
    } catch (e) {
      throw CacheException('Failed to read bool for key: $key');
    }
  }

  @override
  Future<void> setStringList(String key, List<String> value) async {
    try {
      await _prefs.setStringList(key, value);
    } catch (e) {
      throw CacheException('Failed to write string list for key: $key');
    }
  }

  @override
  Future<List<String>?> getStringList(String key) async {
    try {
      return _prefs.getStringList(key);
    } catch (e) {
      throw CacheException('Failed to read string list for key: $key');
    }
  }

  @override
  Future<void> remove(String key) async {
    try {
      await _prefs.remove(key);
    } catch (e) {
      throw CacheException('Failed to remove key: $key');
    }
  }

  @override
  Future<void> clear() async {
    try {
      await _prefs.clear();
    } catch (e) {
      throw CacheException('Failed to clear preferences');
    }
  }
}
