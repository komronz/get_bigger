// lib/features/settings/presentation/bloc/settings_bloc.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_settings_usecase.dart';
import '../../domain/usecases/update_settings_usecase.dart';
import 'settings_event.dart';
import 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc({
    required GetSettingsUseCase getSettings,
    required UpdateSettingsUseCase updateSettings,
  })  : _getSettings = getSettings,
        _updateSettings = updateSettings,
        super(const SettingsState.initial()) {
    on<SettingsEvent>((event, emit) async {
      await event.map(
        loaded: (_) => _onLoaded(emit),
        soundToggled: (_) => _onSoundToggled(emit),
        gameReset: (_) async {},
      );
    });
  }

  final GetSettingsUseCase _getSettings;
  final UpdateSettingsUseCase _updateSettings;

  Future<void> _onLoaded(Emitter<SettingsState> emit) async {
    emit(const SettingsState.loading());
    final result = await _getSettings();
    result.fold(
      (f) => emit(SettingsState.error(message: f.message)),
      (s) => emit(SettingsState.loaded(settings: s)),
    );
  }

  Future<void> _onSoundToggled(Emitter<SettingsState> emit) async {
    await state.maybeMap(
      loaded: (current) async {
        final updated = current.settings.copyWith(
          soundEnabled: !current.settings.soundEnabled,
        );
        await _updateSettings(updated);
        emit(SettingsState.loaded(settings: updated));
      },
      orElse: () async {},
    );
  }


}

