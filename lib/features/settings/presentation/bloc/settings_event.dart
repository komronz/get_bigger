// lib/features/settings/presentation/bloc/settings_event.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_event.freezed.dart';

@freezed
abstract class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.loaded() = _Loaded;
  const factory SettingsEvent.soundToggled() = _SoundToggled;
  const factory SettingsEvent.gameReset() = _GameReset;
}
