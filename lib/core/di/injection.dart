// lib/core/di/injection.dart

import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/collection/data/datasource/collection_local_datasource.dart';
import '../../features/collection/data/repositories/collection_repository_impl.dart';
import '../../features/collection/domain/repositories/collection_repository.dart';
import '../../features/collection/domain/usecases/get_collection_usecase.dart';
import '../../features/collection/domain/usecases/get_unlocked_levels_usecase.dart';
import '../../features/collection/domain/usecases/unlock_animal_usecase.dart';
import '../../features/collection/presentation/bloc/collection_bloc.dart';
import '../../features/game/data/datasource/game_local_datasource.dart';
import '../../features/game/data/repositories/game_repository_impl.dart';
import '../../features/game/domain/repositories/game_repository.dart';
import '../../features/game/domain/usecases/get_best_score_usecase.dart';
import '../../features/game/domain/usecases/load_game_state_usecase.dart';
import '../../features/game/domain/usecases/reset_game_usecase.dart';
import '../../features/game/domain/usecases/save_best_score_usecase.dart';
import '../../features/game/domain/usecases/save_game_state_usecase.dart';
import '../../features/game/presentation/bloc/game_bloc.dart';
import '../../features/settings/data/datasource/settings_local_datasource.dart';
import '../../features/settings/data/repositories/settings_repository_impl.dart';
import '../../features/settings/domain/repositories/settings_repository.dart';
import '../../features/settings/domain/usecases/get_settings_usecase.dart';
import '../../features/settings/domain/usecases/update_settings_usecase.dart';
import '../../features/settings/presentation/bloc/settings_bloc.dart';
import '../services/daily_reward_service.dart';
import '../services/lives_service.dart';
import '../services/local_storage_service.dart';
import '../services/power_up_service.dart';
import '../services/sound_service.dart';
import '../services/sound_service_factory.dart';

final GetIt sl = GetIt.instance;

Future<void> configureDependencies() async {
  // External
  final prefs = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => prefs);

  // Core services
  sl.registerLazySingleton<LocalStorageService>(
    () => LocalStorageServiceImpl(sl()),
  );

  // ─── Game feature ────────────────────────────────────────────────────────
  sl.registerLazySingleton<GameLocalDataSource>(
    () => GameLocalDataSourceImpl(sl()),
  );
  sl.registerLazySingleton<GameRepository>(
    () => GameRepositoryImpl(sl()),
  );
  sl.registerFactory(() => GetBestScoreUseCase(sl()));
  sl.registerFactory(() => SaveBestScoreUseCase(sl()));
  sl.registerFactory(() => LoadGameStateUseCase(sl()));
  sl.registerFactory(() => SaveGameStateUseCase(sl()));
  sl.registerFactory(() => ResetGameUseCase(sl()));
  sl.registerLazySingleton<SoundService>(() => createSoundService());
  sl.registerLazySingleton<PowerUpService>(() => PowerUpService(sl()));
  sl.registerLazySingleton<LivesService>(() => LivesService(sl()));
  sl.registerLazySingleton<DailyRewardService>(() => DailyRewardService(sl()));
  sl.registerFactory(
    () => GameBloc(
      getBestScore: sl(),
      saveBestScore: sl(),
      loadGameState: sl(),
      saveGameState: sl(),
      resetGame: sl(),
      unlockAnimal: sl(),
      getUnlockedLevels: sl(),
      soundService: sl(),
      powerUpService: sl(),
      livesService: sl(),
    ),
  );

  // ─── Collection feature ──────────────────────────────────────────────────
  sl.registerLazySingleton<CollectionLocalDataSource>(
    () => CollectionLocalDataSourceImpl(sl()),
  );
  sl.registerLazySingleton<CollectionRepository>(
    () => CollectionRepositoryImpl(sl()),
  );
  sl.registerFactory(() => GetCollectionUseCase(sl()));
  sl.registerFactory(() => UnlockAnimalUseCase(sl()));
  sl.registerFactory(() => GetUnlockedLevelsUseCase(sl()));
  sl.registerFactory(
    () => CollectionBloc(
      getCollection: sl(),
      unlockAnimal: sl(),
    ),
  );

  // ─── Settings feature ────────────────────────────────────────────────────
  sl.registerLazySingleton<SettingsLocalDataSource>(
    () => SettingsLocalDataSourceImpl(sl()),
  );
  sl.registerLazySingleton<SettingsRepository>(
    () => SettingsRepositoryImpl(sl()),
  );
  sl.registerFactory(() => GetSettingsUseCase(sl()));
  sl.registerFactory(() => UpdateSettingsUseCase(sl()));
  sl.registerFactory(
    () => SettingsBloc(
      getSettings: sl(),
      updateSettings: sl(),
    ),
  );
}
