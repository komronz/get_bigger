// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() soundToggled,
    required TResult Function() gameReset,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? soundToggled,
    TResult? Function()? gameReset,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? soundToggled,
    TResult Function()? gameReset,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SoundToggled value) soundToggled,
    required TResult Function(_GameReset value) gameReset,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SoundToggled value)? soundToggled,
    TResult? Function(_GameReset value)? gameReset,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SoundToggled value)? soundToggled,
    TResult Function(_GameReset value)? gameReset,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
    SettingsEvent value,
    $Res Function(SettingsEvent) then,
  ) = _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
    _$LoadedImpl value,
    $Res Function(_$LoadedImpl) then,
  ) = __$$LoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
    _$LoadedImpl _value,
    $Res Function(_$LoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl();

  @override
  String toString() {
    return 'SettingsEvent.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() soundToggled,
    required TResult Function() gameReset,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? soundToggled,
    TResult? Function()? gameReset,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? soundToggled,
    TResult Function()? gameReset,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SoundToggled value) soundToggled,
    required TResult Function(_GameReset value) gameReset,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SoundToggled value)? soundToggled,
    TResult? Function(_GameReset value)? gameReset,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SoundToggled value)? soundToggled,
    TResult Function(_GameReset value)? gameReset,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements SettingsEvent {
  const factory _Loaded() = _$LoadedImpl;
}

/// @nodoc
abstract class _$$SoundToggledImplCopyWith<$Res> {
  factory _$$SoundToggledImplCopyWith(
    _$SoundToggledImpl value,
    $Res Function(_$SoundToggledImpl) then,
  ) = __$$SoundToggledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SoundToggledImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SoundToggledImpl>
    implements _$$SoundToggledImplCopyWith<$Res> {
  __$$SoundToggledImplCopyWithImpl(
    _$SoundToggledImpl _value,
    $Res Function(_$SoundToggledImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SoundToggledImpl implements _SoundToggled {
  const _$SoundToggledImpl();

  @override
  String toString() {
    return 'SettingsEvent.soundToggled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SoundToggledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() soundToggled,
    required TResult Function() gameReset,
  }) {
    return soundToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? soundToggled,
    TResult? Function()? gameReset,
  }) {
    return soundToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? soundToggled,
    TResult Function()? gameReset,
    required TResult orElse(),
  }) {
    if (soundToggled != null) {
      return soundToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SoundToggled value) soundToggled,
    required TResult Function(_GameReset value) gameReset,
  }) {
    return soundToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SoundToggled value)? soundToggled,
    TResult? Function(_GameReset value)? gameReset,
  }) {
    return soundToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SoundToggled value)? soundToggled,
    TResult Function(_GameReset value)? gameReset,
    required TResult orElse(),
  }) {
    if (soundToggled != null) {
      return soundToggled(this);
    }
    return orElse();
  }
}

abstract class _SoundToggled implements SettingsEvent {
  const factory _SoundToggled() = _$SoundToggledImpl;
}

/// @nodoc
abstract class _$$GameResetImplCopyWith<$Res> {
  factory _$$GameResetImplCopyWith(
    _$GameResetImpl value,
    $Res Function(_$GameResetImpl) then,
  ) = __$$GameResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameResetImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$GameResetImpl>
    implements _$$GameResetImplCopyWith<$Res> {
  __$$GameResetImplCopyWithImpl(
    _$GameResetImpl _value,
    $Res Function(_$GameResetImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SettingsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GameResetImpl implements _GameReset {
  const _$GameResetImpl();

  @override
  String toString() {
    return 'SettingsEvent.gameReset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GameResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() soundToggled,
    required TResult Function() gameReset,
  }) {
    return gameReset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? soundToggled,
    TResult? Function()? gameReset,
  }) {
    return gameReset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? soundToggled,
    TResult Function()? gameReset,
    required TResult orElse(),
  }) {
    if (gameReset != null) {
      return gameReset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_SoundToggled value) soundToggled,
    required TResult Function(_GameReset value) gameReset,
  }) {
    return gameReset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_SoundToggled value)? soundToggled,
    TResult? Function(_GameReset value)? gameReset,
  }) {
    return gameReset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_SoundToggled value)? soundToggled,
    TResult Function(_GameReset value)? gameReset,
    required TResult orElse(),
  }) {
    if (gameReset != null) {
      return gameReset(this);
    }
    return orElse();
  }
}

abstract class _GameReset implements SettingsEvent {
  const factory _GameReset() = _$GameResetImpl;
}
