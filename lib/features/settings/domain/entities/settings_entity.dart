// lib/features/settings/domain/entities/settings_entity.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_entity.freezed.dart';

@freezed
abstract class SettingsEntity with _$SettingsEntity {
  const factory SettingsEntity({
    @Default(true) bool soundEnabled,
  }) = _SettingsEntity;
}
