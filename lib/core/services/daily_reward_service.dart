// lib/core/services/daily_reward_service.dart

import 'package:shared_preferences/shared_preferences.dart';
import '../constants/app_constants.dart';

class DailyReward {
  const DailyReward({
    required this.streakDay,
    required this.livesBonus,
    required this.powerUpBonus,
    required this.powerUpType,
  });

  final int streakDay;
  final int livesBonus;
  final int powerUpBonus;
  final String powerUpType; // 'undo' | 'swap' | 'delete' | ''
}

class DailyRewardService {
  DailyRewardService(this._prefs);

  final SharedPreferences _prefs;

  int get streakCount =>
      _prefs.getInt(AppConstants.kStreakCount) ?? 0;

  String get _lastClaimDate =>
      _prefs.getString(AppConstants.kLastClaimDate) ?? '';

  bool get hasUnclaimedReward {
    final today = _todayString();
    return _lastClaimDate != today;
  }

  /// Call on app launch.  Returns the reward if unclaimed today, else null.
  Future<DailyReward?> maybeClaimDailyReward() async {
    if (!hasUnclaimedReward) return null;
    return claimDailyReward();
  }

  Future<DailyReward> claimDailyReward() async {
    final today = _todayString();
    final yesterday = _yesterdayString();
    final last = _lastClaimDate;

    final newStreak = last == yesterday ? streakCount + 1 : 1;
    await _prefs.setInt(AppConstants.kStreakCount, newStreak);
    await _prefs.setString(AppConstants.kLastClaimDate, today);

    return _rewardForStreak(newStreak);
  }

  static DailyReward _rewardForStreak(int day) {
    // Cycle repeats every 7 days.
    switch ((day - 1) % 7) {
      case 0: // Day 1
        return DailyReward(
            streakDay: day, livesBonus: 1, powerUpBonus: 0, powerUpType: '');
      case 1: // Day 2
        return DailyReward(
            streakDay: day, livesBonus: 0, powerUpBonus: 1, powerUpType: 'undo');
      case 2: // Day 3
        return DailyReward(
            streakDay: day, livesBonus: 1, powerUpBonus: 1, powerUpType: 'swap');
      case 3: // Day 4
        return DailyReward(
            streakDay: day, livesBonus: 0, powerUpBonus: 1, powerUpType: 'delete');
      case 4: // Day 5
        return DailyReward(
            streakDay: day, livesBonus: 2, powerUpBonus: 0, powerUpType: '');
      case 5: // Day 6
        return DailyReward(
            streakDay: day, livesBonus: 1, powerUpBonus: 2, powerUpType: 'undo');
      default: // Day 7
        return DailyReward(
            streakDay: day, livesBonus: 2, powerUpBonus: 2, powerUpType: 'swap');
    }
  }

  static String _todayString() {
    final now = DateTime.now();
    return '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';
  }

  static String _yesterdayString() {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return '${yesterday.year}-${yesterday.month.toString().padLeft(2, '0')}-${yesterday.day.toString().padLeft(2, '0')}';
  }
}
