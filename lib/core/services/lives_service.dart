// lib/core/services/lives_service.dart

import 'package:shared_preferences/shared_preferences.dart';
import '../constants/app_constants.dart';

class LivesService {
  LivesService(this._prefs);

  final SharedPreferences _prefs;

  int get _storedCount =>
      _prefs.getInt(AppConstants.kLivesCount) ?? AppConstants.maxLives;

  int get _lastLostMs =>
      _prefs.getInt(AppConstants.kLastLifeLostMs) ?? 0;

  /// Returns the current life count after applying any regeneration.
  int get currentLives {
    _applyRegen();
    return (_prefs.getInt(AppConstants.kLivesCount) ?? AppConstants.maxLives)
        .clamp(0, AppConstants.maxLives);
  }

  bool get hasFull => currentLives >= AppConstants.maxLives;

  /// Seconds until the next life is regenerated; 0 if already at max.
  int timeUntilNextLifeSeconds() {
    if (hasFull) return 0;
    final lastLost = _lastLostMs;
    if (lastLost == 0) return 0;
    final elapsedMs =
        DateTime.now().millisecondsSinceEpoch - lastLost;
    final regenMs = AppConstants.lifeRegenDuration.inMilliseconds;
    final remaining = regenMs - (elapsedMs % regenMs);
    return (remaining / 1000).ceil();
  }

  void _applyRegen() {
    final stored = _storedCount;
    if (stored >= AppConstants.maxLives) return;

    final lastLost = _lastLostMs;
    if (lastLost == 0) return;

    final elapsedMs =
        DateTime.now().millisecondsSinceEpoch - lastLost;
    final regenMs = AppConstants.lifeRegenDuration.inMilliseconds;
    final regenerated = (elapsedMs / regenMs).floor();
    if (regenerated <= 0) return;

    final newCount = (stored + regenerated).clamp(0, AppConstants.maxLives);
    _prefs.setInt(AppConstants.kLivesCount, newCount);

    if (newCount < AppConstants.maxLives) {
      // Adjust the reference point forward so next regen ticks from now.
      final used = regenerated * regenMs;
      _prefs.setInt(
          AppConstants.kLastLifeLostMs, lastLost + used.toInt());
    }
  }

  /// Returns false if no lives left (game-over should be blocked by caller).
  Future<bool> consumeLife() async {
    final current = currentLives;
    if (current <= 0) return false;
    final newCount = current - 1;
    await _prefs.setInt(AppConstants.kLivesCount, newCount);
    if (newCount < AppConstants.maxLives) {
      await _prefs.setInt(
          AppConstants.kLastLifeLostMs,
          DateTime.now().millisecondsSinceEpoch);
    }
    return true;
  }

  Future<void> addLife(int n) async {
    final newCount =
        (currentLives + n).clamp(0, AppConstants.maxLives);
    await _prefs.setInt(AppConstants.kLivesCount, newCount);
  }
}
