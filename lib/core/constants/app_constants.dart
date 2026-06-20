// lib/core/constants/app_constants.dart

class AppConstants {
  AppConstants._();

  static const int gridSize = 4;
  static const int maxTileLevel = 25;
  static const int winTileLevel = 25; // Golden Dragon

  // Tile spawn probabilities
  static const double level2SpawnChance = 0.10;
  static const double specialAnimalChance = 0.05;  // golden / lucky / sleeping
  static const double trapWebChance = 0.020;        // spider web (mid-game)
  static const double trapRockChance = 0.015;       // rock (late-game)

  // Difficulty thresholds (max tile level on board)
  static const int midGameLevel = 5;   // traps start appearing
  static const int lateGameLevel = 10; // rocks start appearing

  // Score
  static const int scoreMultiplier = 10;

  // SharedPreferences keys — game
  static const String kBestScore = 'best_score';
  static const String kGameState = 'game_state';
  static const String kUnlockedAnimals = 'unlocked_animals';
  static const String kSoundEnabled = 'sound_enabled';

  // SharedPreferences keys — power-ups (persistent inventory)
  static const String kPowerUpUndo = 'pu_undo';
  static const String kPowerUpSwap = 'pu_swap';
  static const String kPowerUpDelete = 'pu_delete';

  // SharedPreferences keys — lives
  static const String kLivesCount = 'lives_count';
  static const String kLastLifeLostMs = 'last_life_lost_ms';

  // SharedPreferences keys — daily rewards & streak
  static const String kLastClaimDate = 'last_claim_date';
  static const String kStreakCount = 'streak_count';

  // Lives
  static const int maxLives = 5;
  static const Duration lifeRegenDuration = Duration(minutes: 30);

  // Power-up milestones: animal level → reward
  static const Map<int, String> kPowerUpMilestones = {
    4:  'undo',   // Beetle
    5:  'undo',   // Mouse
    7:  'swap',   // Rabbit
    8:  'swap',   // Cat
    9:  'delete', // Dog
    10: 'delete', // Fox
    15: 'random', // Lion
    23: 'chest',  // Dragon
  };

  // Animation durations
  static const Duration tileMoveDuration = Duration(milliseconds: 120);
  static const Duration tileMergeDuration = Duration(milliseconds: 150);
  static const Duration tileAppearDuration = Duration(milliseconds: 180);
  static const Duration discoveryCardDuration = Duration(milliseconds: 400);
}
