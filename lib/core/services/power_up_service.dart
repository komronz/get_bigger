// lib/core/services/power_up_service.dart

import 'dart:math';
import 'package:shared_preferences/shared_preferences.dart';
import '../constants/app_constants.dart';

class PowerUpService {
  PowerUpService(this._prefs);

  final SharedPreferences _prefs;

  int get undoCount =>
      _prefs.getInt(AppConstants.kPowerUpUndo) ?? 1;
  int get swapCount =>
      _prefs.getInt(AppConstants.kPowerUpSwap) ?? 1;
  int get deleteCount =>
      _prefs.getInt(AppConstants.kPowerUpDelete) ?? 1;

  Future<bool> useUndo() async {
    if (undoCount <= 0) return false;
    await _prefs.setInt(AppConstants.kPowerUpUndo, undoCount - 1);
    return true;
  }

  Future<bool> useSwap() async {
    if (swapCount <= 0) return false;
    await _prefs.setInt(AppConstants.kPowerUpSwap, swapCount - 1);
    return true;
  }

  Future<bool> useDelete() async {
    if (deleteCount <= 0) return false;
    await _prefs.setInt(AppConstants.kPowerUpDelete, deleteCount - 1);
    return true;
  }

  Future<void> addUndo(int n) async =>
      _prefs.setInt(AppConstants.kPowerUpUndo, undoCount + n);

  Future<void> addSwap(int n) async =>
      _prefs.setInt(AppConstants.kPowerUpSwap, swapCount + n);

  Future<void> addDelete(int n) async =>
      _prefs.setInt(AppConstants.kPowerUpDelete, deleteCount + n);

  /// Award a random power-up (+1 of any type).
  Future<String> addRandom() async {
    final type = ['undo', 'swap', 'delete'][Random().nextInt(3)];
    switch (type) {
      case 'undo':
        await addUndo(1);
      case 'swap':
        await addSwap(1);
      case 'delete':
        await addDelete(1);
    }
    return type;
  }

  /// Award the "legendary chest" reward (Dragon milestone): +2 of each.
  Future<void> addLegendaryChest() async {
    await addUndo(2);
    await addSwap(2);
    await addDelete(2);
  }

  /// Apply the milestone reward for reaching [animalLevel].
  /// Returns a description of what was awarded, or null if no milestone.
  Future<String?> applyMilestone(int animalLevel) async {
    final reward = AppConstants.kPowerUpMilestones[animalLevel];
    if (reward == null) return null;
    switch (reward) {
      case 'undo':
        await addUndo(1);
        return '+1 Undo';
      case 'swap':
        await addSwap(1);
        return '+1 Swap';
      case 'delete':
        await addDelete(1);
        return '+1 Delete';
      case 'random':
        final type = await addRandom();
        return '+1 ${type[0].toUpperCase()}${type.substring(1)}';
      case 'chest':
        await addLegendaryChest();
        return '🎁 Legendary Chest: +2 all power-ups!';
    }
    return null;
  }
}
