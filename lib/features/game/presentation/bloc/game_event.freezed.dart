// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SwipeDirection direction) swiped,
    required TResult Function() reset,
    required TResult Function() discoveryDismissed,
    required TResult Function() continueAfterWin,
    required TResult Function() undoPressed,
    required TResult Function() swapActivated,
    required TResult Function() deleteActivated,
    required TResult Function(int row, int col) tileSelected,
    required TResult Function() powerUpCancelled,
    required TResult Function() powerUpNotified,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SwipeDirection direction)? swiped,
    TResult? Function()? reset,
    TResult? Function()? discoveryDismissed,
    TResult? Function()? continueAfterWin,
    TResult? Function()? undoPressed,
    TResult? Function()? swapActivated,
    TResult? Function()? deleteActivated,
    TResult? Function(int row, int col)? tileSelected,
    TResult? Function()? powerUpCancelled,
    TResult? Function()? powerUpNotified,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SwipeDirection direction)? swiped,
    TResult Function()? reset,
    TResult Function()? discoveryDismissed,
    TResult Function()? continueAfterWin,
    TResult Function()? undoPressed,
    TResult Function()? swapActivated,
    TResult Function()? deleteActivated,
    TResult Function(int row, int col)? tileSelected,
    TResult Function()? powerUpCancelled,
    TResult Function()? powerUpNotified,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Swiped value) swiped,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DiscoveryDismissed value) discoveryDismissed,
    required TResult Function(_ContinueAfterWin value) continueAfterWin,
    required TResult Function(_UndoPressed value) undoPressed,
    required TResult Function(_SwapActivated value) swapActivated,
    required TResult Function(_DeleteActivated value) deleteActivated,
    required TResult Function(_TileSelected value) tileSelected,
    required TResult Function(_PowerUpCancelled value) powerUpCancelled,
    required TResult Function(_PowerUpNotified value) powerUpNotified,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Swiped value)? swiped,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DiscoveryDismissed value)? discoveryDismissed,
    TResult? Function(_ContinueAfterWin value)? continueAfterWin,
    TResult? Function(_UndoPressed value)? undoPressed,
    TResult? Function(_SwapActivated value)? swapActivated,
    TResult? Function(_DeleteActivated value)? deleteActivated,
    TResult? Function(_TileSelected value)? tileSelected,
    TResult? Function(_PowerUpCancelled value)? powerUpCancelled,
    TResult? Function(_PowerUpNotified value)? powerUpNotified,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Swiped value)? swiped,
    TResult Function(_Reset value)? reset,
    TResult Function(_DiscoveryDismissed value)? discoveryDismissed,
    TResult Function(_ContinueAfterWin value)? continueAfterWin,
    TResult Function(_UndoPressed value)? undoPressed,
    TResult Function(_SwapActivated value)? swapActivated,
    TResult Function(_DeleteActivated value)? deleteActivated,
    TResult Function(_TileSelected value)? tileSelected,
    TResult Function(_PowerUpCancelled value)? powerUpCancelled,
    TResult Function(_PowerUpNotified value)? powerUpNotified,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res, GameEvent>;
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res, $Val extends GameEvent>
    implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
    _$StartedImpl value,
    $Res Function(_$StartedImpl) then,
  ) = __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'GameEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SwipeDirection direction) swiped,
    required TResult Function() reset,
    required TResult Function() discoveryDismissed,
    required TResult Function() continueAfterWin,
    required TResult Function() undoPressed,
    required TResult Function() swapActivated,
    required TResult Function() deleteActivated,
    required TResult Function(int row, int col) tileSelected,
    required TResult Function() powerUpCancelled,
    required TResult Function() powerUpNotified,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SwipeDirection direction)? swiped,
    TResult? Function()? reset,
    TResult? Function()? discoveryDismissed,
    TResult? Function()? continueAfterWin,
    TResult? Function()? undoPressed,
    TResult? Function()? swapActivated,
    TResult? Function()? deleteActivated,
    TResult? Function(int row, int col)? tileSelected,
    TResult? Function()? powerUpCancelled,
    TResult? Function()? powerUpNotified,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SwipeDirection direction)? swiped,
    TResult Function()? reset,
    TResult Function()? discoveryDismissed,
    TResult Function()? continueAfterWin,
    TResult Function()? undoPressed,
    TResult Function()? swapActivated,
    TResult Function()? deleteActivated,
    TResult Function(int row, int col)? tileSelected,
    TResult Function()? powerUpCancelled,
    TResult Function()? powerUpNotified,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Swiped value) swiped,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DiscoveryDismissed value) discoveryDismissed,
    required TResult Function(_ContinueAfterWin value) continueAfterWin,
    required TResult Function(_UndoPressed value) undoPressed,
    required TResult Function(_SwapActivated value) swapActivated,
    required TResult Function(_DeleteActivated value) deleteActivated,
    required TResult Function(_TileSelected value) tileSelected,
    required TResult Function(_PowerUpCancelled value) powerUpCancelled,
    required TResult Function(_PowerUpNotified value) powerUpNotified,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Swiped value)? swiped,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DiscoveryDismissed value)? discoveryDismissed,
    TResult? Function(_ContinueAfterWin value)? continueAfterWin,
    TResult? Function(_UndoPressed value)? undoPressed,
    TResult? Function(_SwapActivated value)? swapActivated,
    TResult? Function(_DeleteActivated value)? deleteActivated,
    TResult? Function(_TileSelected value)? tileSelected,
    TResult? Function(_PowerUpCancelled value)? powerUpCancelled,
    TResult? Function(_PowerUpNotified value)? powerUpNotified,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Swiped value)? swiped,
    TResult Function(_Reset value)? reset,
    TResult Function(_DiscoveryDismissed value)? discoveryDismissed,
    TResult Function(_ContinueAfterWin value)? continueAfterWin,
    TResult Function(_UndoPressed value)? undoPressed,
    TResult Function(_SwapActivated value)? swapActivated,
    TResult Function(_DeleteActivated value)? deleteActivated,
    TResult Function(_TileSelected value)? tileSelected,
    TResult Function(_PowerUpCancelled value)? powerUpCancelled,
    TResult Function(_PowerUpNotified value)? powerUpNotified,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements GameEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SwipedImplCopyWith<$Res> {
  factory _$$SwipedImplCopyWith(
    _$SwipedImpl value,
    $Res Function(_$SwipedImpl) then,
  ) = __$$SwipedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SwipeDirection direction});
}

/// @nodoc
class __$$SwipedImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$SwipedImpl>
    implements _$$SwipedImplCopyWith<$Res> {
  __$$SwipedImplCopyWithImpl(
    _$SwipedImpl _value,
    $Res Function(_$SwipedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? direction = null}) {
    return _then(
      _$SwipedImpl(
        direction: null == direction
            ? _value.direction
            : direction // ignore: cast_nullable_to_non_nullable
                  as SwipeDirection,
      ),
    );
  }
}

/// @nodoc

class _$SwipedImpl implements _Swiped {
  const _$SwipedImpl({required this.direction});

  @override
  final SwipeDirection direction;

  @override
  String toString() {
    return 'GameEvent.swiped(direction: $direction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwipedImpl &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, direction);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwipedImplCopyWith<_$SwipedImpl> get copyWith =>
      __$$SwipedImplCopyWithImpl<_$SwipedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SwipeDirection direction) swiped,
    required TResult Function() reset,
    required TResult Function() discoveryDismissed,
    required TResult Function() continueAfterWin,
    required TResult Function() undoPressed,
    required TResult Function() swapActivated,
    required TResult Function() deleteActivated,
    required TResult Function(int row, int col) tileSelected,
    required TResult Function() powerUpCancelled,
    required TResult Function() powerUpNotified,
  }) {
    return swiped(direction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SwipeDirection direction)? swiped,
    TResult? Function()? reset,
    TResult? Function()? discoveryDismissed,
    TResult? Function()? continueAfterWin,
    TResult? Function()? undoPressed,
    TResult? Function()? swapActivated,
    TResult? Function()? deleteActivated,
    TResult? Function(int row, int col)? tileSelected,
    TResult? Function()? powerUpCancelled,
    TResult? Function()? powerUpNotified,
  }) {
    return swiped?.call(direction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SwipeDirection direction)? swiped,
    TResult Function()? reset,
    TResult Function()? discoveryDismissed,
    TResult Function()? continueAfterWin,
    TResult Function()? undoPressed,
    TResult Function()? swapActivated,
    TResult Function()? deleteActivated,
    TResult Function(int row, int col)? tileSelected,
    TResult Function()? powerUpCancelled,
    TResult Function()? powerUpNotified,
    required TResult orElse(),
  }) {
    if (swiped != null) {
      return swiped(direction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Swiped value) swiped,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DiscoveryDismissed value) discoveryDismissed,
    required TResult Function(_ContinueAfterWin value) continueAfterWin,
    required TResult Function(_UndoPressed value) undoPressed,
    required TResult Function(_SwapActivated value) swapActivated,
    required TResult Function(_DeleteActivated value) deleteActivated,
    required TResult Function(_TileSelected value) tileSelected,
    required TResult Function(_PowerUpCancelled value) powerUpCancelled,
    required TResult Function(_PowerUpNotified value) powerUpNotified,
  }) {
    return swiped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Swiped value)? swiped,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DiscoveryDismissed value)? discoveryDismissed,
    TResult? Function(_ContinueAfterWin value)? continueAfterWin,
    TResult? Function(_UndoPressed value)? undoPressed,
    TResult? Function(_SwapActivated value)? swapActivated,
    TResult? Function(_DeleteActivated value)? deleteActivated,
    TResult? Function(_TileSelected value)? tileSelected,
    TResult? Function(_PowerUpCancelled value)? powerUpCancelled,
    TResult? Function(_PowerUpNotified value)? powerUpNotified,
  }) {
    return swiped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Swiped value)? swiped,
    TResult Function(_Reset value)? reset,
    TResult Function(_DiscoveryDismissed value)? discoveryDismissed,
    TResult Function(_ContinueAfterWin value)? continueAfterWin,
    TResult Function(_UndoPressed value)? undoPressed,
    TResult Function(_SwapActivated value)? swapActivated,
    TResult Function(_DeleteActivated value)? deleteActivated,
    TResult Function(_TileSelected value)? tileSelected,
    TResult Function(_PowerUpCancelled value)? powerUpCancelled,
    TResult Function(_PowerUpNotified value)? powerUpNotified,
    required TResult orElse(),
  }) {
    if (swiped != null) {
      return swiped(this);
    }
    return orElse();
  }
}

abstract class _Swiped implements GameEvent {
  const factory _Swiped({required final SwipeDirection direction}) =
      _$SwipedImpl;

  SwipeDirection get direction;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwipedImplCopyWith<_$SwipedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(
    _$ResetImpl value,
    $Res Function(_$ResetImpl) then,
  ) = __$$ResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
    _$ResetImpl _value,
    $Res Function(_$ResetImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetImpl implements _Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'GameEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SwipeDirection direction) swiped,
    required TResult Function() reset,
    required TResult Function() discoveryDismissed,
    required TResult Function() continueAfterWin,
    required TResult Function() undoPressed,
    required TResult Function() swapActivated,
    required TResult Function() deleteActivated,
    required TResult Function(int row, int col) tileSelected,
    required TResult Function() powerUpCancelled,
    required TResult Function() powerUpNotified,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SwipeDirection direction)? swiped,
    TResult? Function()? reset,
    TResult? Function()? discoveryDismissed,
    TResult? Function()? continueAfterWin,
    TResult? Function()? undoPressed,
    TResult? Function()? swapActivated,
    TResult? Function()? deleteActivated,
    TResult? Function(int row, int col)? tileSelected,
    TResult? Function()? powerUpCancelled,
    TResult? Function()? powerUpNotified,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SwipeDirection direction)? swiped,
    TResult Function()? reset,
    TResult Function()? discoveryDismissed,
    TResult Function()? continueAfterWin,
    TResult Function()? undoPressed,
    TResult Function()? swapActivated,
    TResult Function()? deleteActivated,
    TResult Function(int row, int col)? tileSelected,
    TResult Function()? powerUpCancelled,
    TResult Function()? powerUpNotified,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Swiped value) swiped,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DiscoveryDismissed value) discoveryDismissed,
    required TResult Function(_ContinueAfterWin value) continueAfterWin,
    required TResult Function(_UndoPressed value) undoPressed,
    required TResult Function(_SwapActivated value) swapActivated,
    required TResult Function(_DeleteActivated value) deleteActivated,
    required TResult Function(_TileSelected value) tileSelected,
    required TResult Function(_PowerUpCancelled value) powerUpCancelled,
    required TResult Function(_PowerUpNotified value) powerUpNotified,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Swiped value)? swiped,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DiscoveryDismissed value)? discoveryDismissed,
    TResult? Function(_ContinueAfterWin value)? continueAfterWin,
    TResult? Function(_UndoPressed value)? undoPressed,
    TResult? Function(_SwapActivated value)? swapActivated,
    TResult? Function(_DeleteActivated value)? deleteActivated,
    TResult? Function(_TileSelected value)? tileSelected,
    TResult? Function(_PowerUpCancelled value)? powerUpCancelled,
    TResult? Function(_PowerUpNotified value)? powerUpNotified,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Swiped value)? swiped,
    TResult Function(_Reset value)? reset,
    TResult Function(_DiscoveryDismissed value)? discoveryDismissed,
    TResult Function(_ContinueAfterWin value)? continueAfterWin,
    TResult Function(_UndoPressed value)? undoPressed,
    TResult Function(_SwapActivated value)? swapActivated,
    TResult Function(_DeleteActivated value)? deleteActivated,
    TResult Function(_TileSelected value)? tileSelected,
    TResult Function(_PowerUpCancelled value)? powerUpCancelled,
    TResult Function(_PowerUpNotified value)? powerUpNotified,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements GameEvent {
  const factory _Reset() = _$ResetImpl;
}

/// @nodoc
abstract class _$$DiscoveryDismissedImplCopyWith<$Res> {
  factory _$$DiscoveryDismissedImplCopyWith(
    _$DiscoveryDismissedImpl value,
    $Res Function(_$DiscoveryDismissedImpl) then,
  ) = __$$DiscoveryDismissedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DiscoveryDismissedImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$DiscoveryDismissedImpl>
    implements _$$DiscoveryDismissedImplCopyWith<$Res> {
  __$$DiscoveryDismissedImplCopyWithImpl(
    _$DiscoveryDismissedImpl _value,
    $Res Function(_$DiscoveryDismissedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DiscoveryDismissedImpl implements _DiscoveryDismissed {
  const _$DiscoveryDismissedImpl();

  @override
  String toString() {
    return 'GameEvent.discoveryDismissed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DiscoveryDismissedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SwipeDirection direction) swiped,
    required TResult Function() reset,
    required TResult Function() discoveryDismissed,
    required TResult Function() continueAfterWin,
    required TResult Function() undoPressed,
    required TResult Function() swapActivated,
    required TResult Function() deleteActivated,
    required TResult Function(int row, int col) tileSelected,
    required TResult Function() powerUpCancelled,
    required TResult Function() powerUpNotified,
  }) {
    return discoveryDismissed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SwipeDirection direction)? swiped,
    TResult? Function()? reset,
    TResult? Function()? discoveryDismissed,
    TResult? Function()? continueAfterWin,
    TResult? Function()? undoPressed,
    TResult? Function()? swapActivated,
    TResult? Function()? deleteActivated,
    TResult? Function(int row, int col)? tileSelected,
    TResult? Function()? powerUpCancelled,
    TResult? Function()? powerUpNotified,
  }) {
    return discoveryDismissed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SwipeDirection direction)? swiped,
    TResult Function()? reset,
    TResult Function()? discoveryDismissed,
    TResult Function()? continueAfterWin,
    TResult Function()? undoPressed,
    TResult Function()? swapActivated,
    TResult Function()? deleteActivated,
    TResult Function(int row, int col)? tileSelected,
    TResult Function()? powerUpCancelled,
    TResult Function()? powerUpNotified,
    required TResult orElse(),
  }) {
    if (discoveryDismissed != null) {
      return discoveryDismissed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Swiped value) swiped,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DiscoveryDismissed value) discoveryDismissed,
    required TResult Function(_ContinueAfterWin value) continueAfterWin,
    required TResult Function(_UndoPressed value) undoPressed,
    required TResult Function(_SwapActivated value) swapActivated,
    required TResult Function(_DeleteActivated value) deleteActivated,
    required TResult Function(_TileSelected value) tileSelected,
    required TResult Function(_PowerUpCancelled value) powerUpCancelled,
    required TResult Function(_PowerUpNotified value) powerUpNotified,
  }) {
    return discoveryDismissed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Swiped value)? swiped,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DiscoveryDismissed value)? discoveryDismissed,
    TResult? Function(_ContinueAfterWin value)? continueAfterWin,
    TResult? Function(_UndoPressed value)? undoPressed,
    TResult? Function(_SwapActivated value)? swapActivated,
    TResult? Function(_DeleteActivated value)? deleteActivated,
    TResult? Function(_TileSelected value)? tileSelected,
    TResult? Function(_PowerUpCancelled value)? powerUpCancelled,
    TResult? Function(_PowerUpNotified value)? powerUpNotified,
  }) {
    return discoveryDismissed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Swiped value)? swiped,
    TResult Function(_Reset value)? reset,
    TResult Function(_DiscoveryDismissed value)? discoveryDismissed,
    TResult Function(_ContinueAfterWin value)? continueAfterWin,
    TResult Function(_UndoPressed value)? undoPressed,
    TResult Function(_SwapActivated value)? swapActivated,
    TResult Function(_DeleteActivated value)? deleteActivated,
    TResult Function(_TileSelected value)? tileSelected,
    TResult Function(_PowerUpCancelled value)? powerUpCancelled,
    TResult Function(_PowerUpNotified value)? powerUpNotified,
    required TResult orElse(),
  }) {
    if (discoveryDismissed != null) {
      return discoveryDismissed(this);
    }
    return orElse();
  }
}

abstract class _DiscoveryDismissed implements GameEvent {
  const factory _DiscoveryDismissed() = _$DiscoveryDismissedImpl;
}

/// @nodoc
abstract class _$$ContinueAfterWinImplCopyWith<$Res> {
  factory _$$ContinueAfterWinImplCopyWith(
    _$ContinueAfterWinImpl value,
    $Res Function(_$ContinueAfterWinImpl) then,
  ) = __$$ContinueAfterWinImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContinueAfterWinImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$ContinueAfterWinImpl>
    implements _$$ContinueAfterWinImplCopyWith<$Res> {
  __$$ContinueAfterWinImplCopyWithImpl(
    _$ContinueAfterWinImpl _value,
    $Res Function(_$ContinueAfterWinImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ContinueAfterWinImpl implements _ContinueAfterWin {
  const _$ContinueAfterWinImpl();

  @override
  String toString() {
    return 'GameEvent.continueAfterWin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ContinueAfterWinImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SwipeDirection direction) swiped,
    required TResult Function() reset,
    required TResult Function() discoveryDismissed,
    required TResult Function() continueAfterWin,
    required TResult Function() undoPressed,
    required TResult Function() swapActivated,
    required TResult Function() deleteActivated,
    required TResult Function(int row, int col) tileSelected,
    required TResult Function() powerUpCancelled,
    required TResult Function() powerUpNotified,
  }) {
    return continueAfterWin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SwipeDirection direction)? swiped,
    TResult? Function()? reset,
    TResult? Function()? discoveryDismissed,
    TResult? Function()? continueAfterWin,
    TResult? Function()? undoPressed,
    TResult? Function()? swapActivated,
    TResult? Function()? deleteActivated,
    TResult? Function(int row, int col)? tileSelected,
    TResult? Function()? powerUpCancelled,
    TResult? Function()? powerUpNotified,
  }) {
    return continueAfterWin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SwipeDirection direction)? swiped,
    TResult Function()? reset,
    TResult Function()? discoveryDismissed,
    TResult Function()? continueAfterWin,
    TResult Function()? undoPressed,
    TResult Function()? swapActivated,
    TResult Function()? deleteActivated,
    TResult Function(int row, int col)? tileSelected,
    TResult Function()? powerUpCancelled,
    TResult Function()? powerUpNotified,
    required TResult orElse(),
  }) {
    if (continueAfterWin != null) {
      return continueAfterWin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Swiped value) swiped,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DiscoveryDismissed value) discoveryDismissed,
    required TResult Function(_ContinueAfterWin value) continueAfterWin,
    required TResult Function(_UndoPressed value) undoPressed,
    required TResult Function(_SwapActivated value) swapActivated,
    required TResult Function(_DeleteActivated value) deleteActivated,
    required TResult Function(_TileSelected value) tileSelected,
    required TResult Function(_PowerUpCancelled value) powerUpCancelled,
    required TResult Function(_PowerUpNotified value) powerUpNotified,
  }) {
    return continueAfterWin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Swiped value)? swiped,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DiscoveryDismissed value)? discoveryDismissed,
    TResult? Function(_ContinueAfterWin value)? continueAfterWin,
    TResult? Function(_UndoPressed value)? undoPressed,
    TResult? Function(_SwapActivated value)? swapActivated,
    TResult? Function(_DeleteActivated value)? deleteActivated,
    TResult? Function(_TileSelected value)? tileSelected,
    TResult? Function(_PowerUpCancelled value)? powerUpCancelled,
    TResult? Function(_PowerUpNotified value)? powerUpNotified,
  }) {
    return continueAfterWin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Swiped value)? swiped,
    TResult Function(_Reset value)? reset,
    TResult Function(_DiscoveryDismissed value)? discoveryDismissed,
    TResult Function(_ContinueAfterWin value)? continueAfterWin,
    TResult Function(_UndoPressed value)? undoPressed,
    TResult Function(_SwapActivated value)? swapActivated,
    TResult Function(_DeleteActivated value)? deleteActivated,
    TResult Function(_TileSelected value)? tileSelected,
    TResult Function(_PowerUpCancelled value)? powerUpCancelled,
    TResult Function(_PowerUpNotified value)? powerUpNotified,
    required TResult orElse(),
  }) {
    if (continueAfterWin != null) {
      return continueAfterWin(this);
    }
    return orElse();
  }
}

abstract class _ContinueAfterWin implements GameEvent {
  const factory _ContinueAfterWin() = _$ContinueAfterWinImpl;
}

/// @nodoc
abstract class _$$UndoPressedImplCopyWith<$Res> {
  factory _$$UndoPressedImplCopyWith(
    _$UndoPressedImpl value,
    $Res Function(_$UndoPressedImpl) then,
  ) = __$$UndoPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UndoPressedImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$UndoPressedImpl>
    implements _$$UndoPressedImplCopyWith<$Res> {
  __$$UndoPressedImplCopyWithImpl(
    _$UndoPressedImpl _value,
    $Res Function(_$UndoPressedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UndoPressedImpl implements _UndoPressed {
  const _$UndoPressedImpl();

  @override
  String toString() {
    return 'GameEvent.undoPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UndoPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SwipeDirection direction) swiped,
    required TResult Function() reset,
    required TResult Function() discoveryDismissed,
    required TResult Function() continueAfterWin,
    required TResult Function() undoPressed,
    required TResult Function() swapActivated,
    required TResult Function() deleteActivated,
    required TResult Function(int row, int col) tileSelected,
    required TResult Function() powerUpCancelled,
    required TResult Function() powerUpNotified,
  }) {
    return undoPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SwipeDirection direction)? swiped,
    TResult? Function()? reset,
    TResult? Function()? discoveryDismissed,
    TResult? Function()? continueAfterWin,
    TResult? Function()? undoPressed,
    TResult? Function()? swapActivated,
    TResult? Function()? deleteActivated,
    TResult? Function(int row, int col)? tileSelected,
    TResult? Function()? powerUpCancelled,
    TResult? Function()? powerUpNotified,
  }) {
    return undoPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SwipeDirection direction)? swiped,
    TResult Function()? reset,
    TResult Function()? discoveryDismissed,
    TResult Function()? continueAfterWin,
    TResult Function()? undoPressed,
    TResult Function()? swapActivated,
    TResult Function()? deleteActivated,
    TResult Function(int row, int col)? tileSelected,
    TResult Function()? powerUpCancelled,
    TResult Function()? powerUpNotified,
    required TResult orElse(),
  }) {
    if (undoPressed != null) {
      return undoPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Swiped value) swiped,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DiscoveryDismissed value) discoveryDismissed,
    required TResult Function(_ContinueAfterWin value) continueAfterWin,
    required TResult Function(_UndoPressed value) undoPressed,
    required TResult Function(_SwapActivated value) swapActivated,
    required TResult Function(_DeleteActivated value) deleteActivated,
    required TResult Function(_TileSelected value) tileSelected,
    required TResult Function(_PowerUpCancelled value) powerUpCancelled,
    required TResult Function(_PowerUpNotified value) powerUpNotified,
  }) {
    return undoPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Swiped value)? swiped,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DiscoveryDismissed value)? discoveryDismissed,
    TResult? Function(_ContinueAfterWin value)? continueAfterWin,
    TResult? Function(_UndoPressed value)? undoPressed,
    TResult? Function(_SwapActivated value)? swapActivated,
    TResult? Function(_DeleteActivated value)? deleteActivated,
    TResult? Function(_TileSelected value)? tileSelected,
    TResult? Function(_PowerUpCancelled value)? powerUpCancelled,
    TResult? Function(_PowerUpNotified value)? powerUpNotified,
  }) {
    return undoPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Swiped value)? swiped,
    TResult Function(_Reset value)? reset,
    TResult Function(_DiscoveryDismissed value)? discoveryDismissed,
    TResult Function(_ContinueAfterWin value)? continueAfterWin,
    TResult Function(_UndoPressed value)? undoPressed,
    TResult Function(_SwapActivated value)? swapActivated,
    TResult Function(_DeleteActivated value)? deleteActivated,
    TResult Function(_TileSelected value)? tileSelected,
    TResult Function(_PowerUpCancelled value)? powerUpCancelled,
    TResult Function(_PowerUpNotified value)? powerUpNotified,
    required TResult orElse(),
  }) {
    if (undoPressed != null) {
      return undoPressed(this);
    }
    return orElse();
  }
}

abstract class _UndoPressed implements GameEvent {
  const factory _UndoPressed() = _$UndoPressedImpl;
}

/// @nodoc
abstract class _$$SwapActivatedImplCopyWith<$Res> {
  factory _$$SwapActivatedImplCopyWith(
    _$SwapActivatedImpl value,
    $Res Function(_$SwapActivatedImpl) then,
  ) = __$$SwapActivatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SwapActivatedImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$SwapActivatedImpl>
    implements _$$SwapActivatedImplCopyWith<$Res> {
  __$$SwapActivatedImplCopyWithImpl(
    _$SwapActivatedImpl _value,
    $Res Function(_$SwapActivatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SwapActivatedImpl implements _SwapActivated {
  const _$SwapActivatedImpl();

  @override
  String toString() {
    return 'GameEvent.swapActivated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SwapActivatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SwipeDirection direction) swiped,
    required TResult Function() reset,
    required TResult Function() discoveryDismissed,
    required TResult Function() continueAfterWin,
    required TResult Function() undoPressed,
    required TResult Function() swapActivated,
    required TResult Function() deleteActivated,
    required TResult Function(int row, int col) tileSelected,
    required TResult Function() powerUpCancelled,
    required TResult Function() powerUpNotified,
  }) {
    return swapActivated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SwipeDirection direction)? swiped,
    TResult? Function()? reset,
    TResult? Function()? discoveryDismissed,
    TResult? Function()? continueAfterWin,
    TResult? Function()? undoPressed,
    TResult? Function()? swapActivated,
    TResult? Function()? deleteActivated,
    TResult? Function(int row, int col)? tileSelected,
    TResult? Function()? powerUpCancelled,
    TResult? Function()? powerUpNotified,
  }) {
    return swapActivated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SwipeDirection direction)? swiped,
    TResult Function()? reset,
    TResult Function()? discoveryDismissed,
    TResult Function()? continueAfterWin,
    TResult Function()? undoPressed,
    TResult Function()? swapActivated,
    TResult Function()? deleteActivated,
    TResult Function(int row, int col)? tileSelected,
    TResult Function()? powerUpCancelled,
    TResult Function()? powerUpNotified,
    required TResult orElse(),
  }) {
    if (swapActivated != null) {
      return swapActivated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Swiped value) swiped,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DiscoveryDismissed value) discoveryDismissed,
    required TResult Function(_ContinueAfterWin value) continueAfterWin,
    required TResult Function(_UndoPressed value) undoPressed,
    required TResult Function(_SwapActivated value) swapActivated,
    required TResult Function(_DeleteActivated value) deleteActivated,
    required TResult Function(_TileSelected value) tileSelected,
    required TResult Function(_PowerUpCancelled value) powerUpCancelled,
    required TResult Function(_PowerUpNotified value) powerUpNotified,
  }) {
    return swapActivated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Swiped value)? swiped,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DiscoveryDismissed value)? discoveryDismissed,
    TResult? Function(_ContinueAfterWin value)? continueAfterWin,
    TResult? Function(_UndoPressed value)? undoPressed,
    TResult? Function(_SwapActivated value)? swapActivated,
    TResult? Function(_DeleteActivated value)? deleteActivated,
    TResult? Function(_TileSelected value)? tileSelected,
    TResult? Function(_PowerUpCancelled value)? powerUpCancelled,
    TResult? Function(_PowerUpNotified value)? powerUpNotified,
  }) {
    return swapActivated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Swiped value)? swiped,
    TResult Function(_Reset value)? reset,
    TResult Function(_DiscoveryDismissed value)? discoveryDismissed,
    TResult Function(_ContinueAfterWin value)? continueAfterWin,
    TResult Function(_UndoPressed value)? undoPressed,
    TResult Function(_SwapActivated value)? swapActivated,
    TResult Function(_DeleteActivated value)? deleteActivated,
    TResult Function(_TileSelected value)? tileSelected,
    TResult Function(_PowerUpCancelled value)? powerUpCancelled,
    TResult Function(_PowerUpNotified value)? powerUpNotified,
    required TResult orElse(),
  }) {
    if (swapActivated != null) {
      return swapActivated(this);
    }
    return orElse();
  }
}

abstract class _SwapActivated implements GameEvent {
  const factory _SwapActivated() = _$SwapActivatedImpl;
}

/// @nodoc
abstract class _$$DeleteActivatedImplCopyWith<$Res> {
  factory _$$DeleteActivatedImplCopyWith(
    _$DeleteActivatedImpl value,
    $Res Function(_$DeleteActivatedImpl) then,
  ) = __$$DeleteActivatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteActivatedImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$DeleteActivatedImpl>
    implements _$$DeleteActivatedImplCopyWith<$Res> {
  __$$DeleteActivatedImplCopyWithImpl(
    _$DeleteActivatedImpl _value,
    $Res Function(_$DeleteActivatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeleteActivatedImpl implements _DeleteActivated {
  const _$DeleteActivatedImpl();

  @override
  String toString() {
    return 'GameEvent.deleteActivated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteActivatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SwipeDirection direction) swiped,
    required TResult Function() reset,
    required TResult Function() discoveryDismissed,
    required TResult Function() continueAfterWin,
    required TResult Function() undoPressed,
    required TResult Function() swapActivated,
    required TResult Function() deleteActivated,
    required TResult Function(int row, int col) tileSelected,
    required TResult Function() powerUpCancelled,
    required TResult Function() powerUpNotified,
  }) {
    return deleteActivated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SwipeDirection direction)? swiped,
    TResult? Function()? reset,
    TResult? Function()? discoveryDismissed,
    TResult? Function()? continueAfterWin,
    TResult? Function()? undoPressed,
    TResult? Function()? swapActivated,
    TResult? Function()? deleteActivated,
    TResult? Function(int row, int col)? tileSelected,
    TResult? Function()? powerUpCancelled,
    TResult? Function()? powerUpNotified,
  }) {
    return deleteActivated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SwipeDirection direction)? swiped,
    TResult Function()? reset,
    TResult Function()? discoveryDismissed,
    TResult Function()? continueAfterWin,
    TResult Function()? undoPressed,
    TResult Function()? swapActivated,
    TResult Function()? deleteActivated,
    TResult Function(int row, int col)? tileSelected,
    TResult Function()? powerUpCancelled,
    TResult Function()? powerUpNotified,
    required TResult orElse(),
  }) {
    if (deleteActivated != null) {
      return deleteActivated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Swiped value) swiped,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DiscoveryDismissed value) discoveryDismissed,
    required TResult Function(_ContinueAfterWin value) continueAfterWin,
    required TResult Function(_UndoPressed value) undoPressed,
    required TResult Function(_SwapActivated value) swapActivated,
    required TResult Function(_DeleteActivated value) deleteActivated,
    required TResult Function(_TileSelected value) tileSelected,
    required TResult Function(_PowerUpCancelled value) powerUpCancelled,
    required TResult Function(_PowerUpNotified value) powerUpNotified,
  }) {
    return deleteActivated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Swiped value)? swiped,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DiscoveryDismissed value)? discoveryDismissed,
    TResult? Function(_ContinueAfterWin value)? continueAfterWin,
    TResult? Function(_UndoPressed value)? undoPressed,
    TResult? Function(_SwapActivated value)? swapActivated,
    TResult? Function(_DeleteActivated value)? deleteActivated,
    TResult? Function(_TileSelected value)? tileSelected,
    TResult? Function(_PowerUpCancelled value)? powerUpCancelled,
    TResult? Function(_PowerUpNotified value)? powerUpNotified,
  }) {
    return deleteActivated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Swiped value)? swiped,
    TResult Function(_Reset value)? reset,
    TResult Function(_DiscoveryDismissed value)? discoveryDismissed,
    TResult Function(_ContinueAfterWin value)? continueAfterWin,
    TResult Function(_UndoPressed value)? undoPressed,
    TResult Function(_SwapActivated value)? swapActivated,
    TResult Function(_DeleteActivated value)? deleteActivated,
    TResult Function(_TileSelected value)? tileSelected,
    TResult Function(_PowerUpCancelled value)? powerUpCancelled,
    TResult Function(_PowerUpNotified value)? powerUpNotified,
    required TResult orElse(),
  }) {
    if (deleteActivated != null) {
      return deleteActivated(this);
    }
    return orElse();
  }
}

abstract class _DeleteActivated implements GameEvent {
  const factory _DeleteActivated() = _$DeleteActivatedImpl;
}

/// @nodoc
abstract class _$$TileSelectedImplCopyWith<$Res> {
  factory _$$TileSelectedImplCopyWith(
    _$TileSelectedImpl value,
    $Res Function(_$TileSelectedImpl) then,
  ) = __$$TileSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int row, int col});
}

/// @nodoc
class __$$TileSelectedImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$TileSelectedImpl>
    implements _$$TileSelectedImplCopyWith<$Res> {
  __$$TileSelectedImplCopyWithImpl(
    _$TileSelectedImpl _value,
    $Res Function(_$TileSelectedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? row = null, Object? col = null}) {
    return _then(
      _$TileSelectedImpl(
        row: null == row
            ? _value.row
            : row // ignore: cast_nullable_to_non_nullable
                  as int,
        col: null == col
            ? _value.col
            : col // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$TileSelectedImpl implements _TileSelected {
  const _$TileSelectedImpl({required this.row, required this.col});

  @override
  final int row;
  @override
  final int col;

  @override
  String toString() {
    return 'GameEvent.tileSelected(row: $row, col: $col)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TileSelectedImpl &&
            (identical(other.row, row) || other.row == row) &&
            (identical(other.col, col) || other.col == col));
  }

  @override
  int get hashCode => Object.hash(runtimeType, row, col);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TileSelectedImplCopyWith<_$TileSelectedImpl> get copyWith =>
      __$$TileSelectedImplCopyWithImpl<_$TileSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SwipeDirection direction) swiped,
    required TResult Function() reset,
    required TResult Function() discoveryDismissed,
    required TResult Function() continueAfterWin,
    required TResult Function() undoPressed,
    required TResult Function() swapActivated,
    required TResult Function() deleteActivated,
    required TResult Function(int row, int col) tileSelected,
    required TResult Function() powerUpCancelled,
    required TResult Function() powerUpNotified,
  }) {
    return tileSelected(row, col);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SwipeDirection direction)? swiped,
    TResult? Function()? reset,
    TResult? Function()? discoveryDismissed,
    TResult? Function()? continueAfterWin,
    TResult? Function()? undoPressed,
    TResult? Function()? swapActivated,
    TResult? Function()? deleteActivated,
    TResult? Function(int row, int col)? tileSelected,
    TResult? Function()? powerUpCancelled,
    TResult? Function()? powerUpNotified,
  }) {
    return tileSelected?.call(row, col);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SwipeDirection direction)? swiped,
    TResult Function()? reset,
    TResult Function()? discoveryDismissed,
    TResult Function()? continueAfterWin,
    TResult Function()? undoPressed,
    TResult Function()? swapActivated,
    TResult Function()? deleteActivated,
    TResult Function(int row, int col)? tileSelected,
    TResult Function()? powerUpCancelled,
    TResult Function()? powerUpNotified,
    required TResult orElse(),
  }) {
    if (tileSelected != null) {
      return tileSelected(row, col);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Swiped value) swiped,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DiscoveryDismissed value) discoveryDismissed,
    required TResult Function(_ContinueAfterWin value) continueAfterWin,
    required TResult Function(_UndoPressed value) undoPressed,
    required TResult Function(_SwapActivated value) swapActivated,
    required TResult Function(_DeleteActivated value) deleteActivated,
    required TResult Function(_TileSelected value) tileSelected,
    required TResult Function(_PowerUpCancelled value) powerUpCancelled,
    required TResult Function(_PowerUpNotified value) powerUpNotified,
  }) {
    return tileSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Swiped value)? swiped,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DiscoveryDismissed value)? discoveryDismissed,
    TResult? Function(_ContinueAfterWin value)? continueAfterWin,
    TResult? Function(_UndoPressed value)? undoPressed,
    TResult? Function(_SwapActivated value)? swapActivated,
    TResult? Function(_DeleteActivated value)? deleteActivated,
    TResult? Function(_TileSelected value)? tileSelected,
    TResult? Function(_PowerUpCancelled value)? powerUpCancelled,
    TResult? Function(_PowerUpNotified value)? powerUpNotified,
  }) {
    return tileSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Swiped value)? swiped,
    TResult Function(_Reset value)? reset,
    TResult Function(_DiscoveryDismissed value)? discoveryDismissed,
    TResult Function(_ContinueAfterWin value)? continueAfterWin,
    TResult Function(_UndoPressed value)? undoPressed,
    TResult Function(_SwapActivated value)? swapActivated,
    TResult Function(_DeleteActivated value)? deleteActivated,
    TResult Function(_TileSelected value)? tileSelected,
    TResult Function(_PowerUpCancelled value)? powerUpCancelled,
    TResult Function(_PowerUpNotified value)? powerUpNotified,
    required TResult orElse(),
  }) {
    if (tileSelected != null) {
      return tileSelected(this);
    }
    return orElse();
  }
}

abstract class _TileSelected implements GameEvent {
  const factory _TileSelected({
    required final int row,
    required final int col,
  }) = _$TileSelectedImpl;

  int get row;
  int get col;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TileSelectedImplCopyWith<_$TileSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PowerUpCancelledImplCopyWith<$Res> {
  factory _$$PowerUpCancelledImplCopyWith(
    _$PowerUpCancelledImpl value,
    $Res Function(_$PowerUpCancelledImpl) then,
  ) = __$$PowerUpCancelledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PowerUpCancelledImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$PowerUpCancelledImpl>
    implements _$$PowerUpCancelledImplCopyWith<$Res> {
  __$$PowerUpCancelledImplCopyWithImpl(
    _$PowerUpCancelledImpl _value,
    $Res Function(_$PowerUpCancelledImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PowerUpCancelledImpl implements _PowerUpCancelled {
  const _$PowerUpCancelledImpl();

  @override
  String toString() {
    return 'GameEvent.powerUpCancelled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PowerUpCancelledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SwipeDirection direction) swiped,
    required TResult Function() reset,
    required TResult Function() discoveryDismissed,
    required TResult Function() continueAfterWin,
    required TResult Function() undoPressed,
    required TResult Function() swapActivated,
    required TResult Function() deleteActivated,
    required TResult Function(int row, int col) tileSelected,
    required TResult Function() powerUpCancelled,
    required TResult Function() powerUpNotified,
  }) {
    return powerUpCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SwipeDirection direction)? swiped,
    TResult? Function()? reset,
    TResult? Function()? discoveryDismissed,
    TResult? Function()? continueAfterWin,
    TResult? Function()? undoPressed,
    TResult? Function()? swapActivated,
    TResult? Function()? deleteActivated,
    TResult? Function(int row, int col)? tileSelected,
    TResult? Function()? powerUpCancelled,
    TResult? Function()? powerUpNotified,
  }) {
    return powerUpCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SwipeDirection direction)? swiped,
    TResult Function()? reset,
    TResult Function()? discoveryDismissed,
    TResult Function()? continueAfterWin,
    TResult Function()? undoPressed,
    TResult Function()? swapActivated,
    TResult Function()? deleteActivated,
    TResult Function(int row, int col)? tileSelected,
    TResult Function()? powerUpCancelled,
    TResult Function()? powerUpNotified,
    required TResult orElse(),
  }) {
    if (powerUpCancelled != null) {
      return powerUpCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Swiped value) swiped,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DiscoveryDismissed value) discoveryDismissed,
    required TResult Function(_ContinueAfterWin value) continueAfterWin,
    required TResult Function(_UndoPressed value) undoPressed,
    required TResult Function(_SwapActivated value) swapActivated,
    required TResult Function(_DeleteActivated value) deleteActivated,
    required TResult Function(_TileSelected value) tileSelected,
    required TResult Function(_PowerUpCancelled value) powerUpCancelled,
    required TResult Function(_PowerUpNotified value) powerUpNotified,
  }) {
    return powerUpCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Swiped value)? swiped,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DiscoveryDismissed value)? discoveryDismissed,
    TResult? Function(_ContinueAfterWin value)? continueAfterWin,
    TResult? Function(_UndoPressed value)? undoPressed,
    TResult? Function(_SwapActivated value)? swapActivated,
    TResult? Function(_DeleteActivated value)? deleteActivated,
    TResult? Function(_TileSelected value)? tileSelected,
    TResult? Function(_PowerUpCancelled value)? powerUpCancelled,
    TResult? Function(_PowerUpNotified value)? powerUpNotified,
  }) {
    return powerUpCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Swiped value)? swiped,
    TResult Function(_Reset value)? reset,
    TResult Function(_DiscoveryDismissed value)? discoveryDismissed,
    TResult Function(_ContinueAfterWin value)? continueAfterWin,
    TResult Function(_UndoPressed value)? undoPressed,
    TResult Function(_SwapActivated value)? swapActivated,
    TResult Function(_DeleteActivated value)? deleteActivated,
    TResult Function(_TileSelected value)? tileSelected,
    TResult Function(_PowerUpCancelled value)? powerUpCancelled,
    TResult Function(_PowerUpNotified value)? powerUpNotified,
    required TResult orElse(),
  }) {
    if (powerUpCancelled != null) {
      return powerUpCancelled(this);
    }
    return orElse();
  }
}

abstract class _PowerUpCancelled implements GameEvent {
  const factory _PowerUpCancelled() = _$PowerUpCancelledImpl;
}

/// @nodoc
abstract class _$$PowerUpNotifiedImplCopyWith<$Res> {
  factory _$$PowerUpNotifiedImplCopyWith(
    _$PowerUpNotifiedImpl value,
    $Res Function(_$PowerUpNotifiedImpl) then,
  ) = __$$PowerUpNotifiedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PowerUpNotifiedImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$PowerUpNotifiedImpl>
    implements _$$PowerUpNotifiedImplCopyWith<$Res> {
  __$$PowerUpNotifiedImplCopyWithImpl(
    _$PowerUpNotifiedImpl _value,
    $Res Function(_$PowerUpNotifiedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PowerUpNotifiedImpl implements _PowerUpNotified {
  const _$PowerUpNotifiedImpl();

  @override
  String toString() {
    return 'GameEvent.powerUpNotified()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PowerUpNotifiedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SwipeDirection direction) swiped,
    required TResult Function() reset,
    required TResult Function() discoveryDismissed,
    required TResult Function() continueAfterWin,
    required TResult Function() undoPressed,
    required TResult Function() swapActivated,
    required TResult Function() deleteActivated,
    required TResult Function(int row, int col) tileSelected,
    required TResult Function() powerUpCancelled,
    required TResult Function() powerUpNotified,
  }) {
    return powerUpNotified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SwipeDirection direction)? swiped,
    TResult? Function()? reset,
    TResult? Function()? discoveryDismissed,
    TResult? Function()? continueAfterWin,
    TResult? Function()? undoPressed,
    TResult? Function()? swapActivated,
    TResult? Function()? deleteActivated,
    TResult? Function(int row, int col)? tileSelected,
    TResult? Function()? powerUpCancelled,
    TResult? Function()? powerUpNotified,
  }) {
    return powerUpNotified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SwipeDirection direction)? swiped,
    TResult Function()? reset,
    TResult Function()? discoveryDismissed,
    TResult Function()? continueAfterWin,
    TResult Function()? undoPressed,
    TResult Function()? swapActivated,
    TResult Function()? deleteActivated,
    TResult Function(int row, int col)? tileSelected,
    TResult Function()? powerUpCancelled,
    TResult Function()? powerUpNotified,
    required TResult orElse(),
  }) {
    if (powerUpNotified != null) {
      return powerUpNotified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Swiped value) swiped,
    required TResult Function(_Reset value) reset,
    required TResult Function(_DiscoveryDismissed value) discoveryDismissed,
    required TResult Function(_ContinueAfterWin value) continueAfterWin,
    required TResult Function(_UndoPressed value) undoPressed,
    required TResult Function(_SwapActivated value) swapActivated,
    required TResult Function(_DeleteActivated value) deleteActivated,
    required TResult Function(_TileSelected value) tileSelected,
    required TResult Function(_PowerUpCancelled value) powerUpCancelled,
    required TResult Function(_PowerUpNotified value) powerUpNotified,
  }) {
    return powerUpNotified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Swiped value)? swiped,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_DiscoveryDismissed value)? discoveryDismissed,
    TResult? Function(_ContinueAfterWin value)? continueAfterWin,
    TResult? Function(_UndoPressed value)? undoPressed,
    TResult? Function(_SwapActivated value)? swapActivated,
    TResult? Function(_DeleteActivated value)? deleteActivated,
    TResult? Function(_TileSelected value)? tileSelected,
    TResult? Function(_PowerUpCancelled value)? powerUpCancelled,
    TResult? Function(_PowerUpNotified value)? powerUpNotified,
  }) {
    return powerUpNotified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Swiped value)? swiped,
    TResult Function(_Reset value)? reset,
    TResult Function(_DiscoveryDismissed value)? discoveryDismissed,
    TResult Function(_ContinueAfterWin value)? continueAfterWin,
    TResult Function(_UndoPressed value)? undoPressed,
    TResult Function(_SwapActivated value)? swapActivated,
    TResult Function(_DeleteActivated value)? deleteActivated,
    TResult Function(_TileSelected value)? tileSelected,
    TResult Function(_PowerUpCancelled value)? powerUpCancelled,
    TResult Function(_PowerUpNotified value)? powerUpNotified,
    required TResult orElse(),
  }) {
    if (powerUpNotified != null) {
      return powerUpNotified(this);
    }
    return orElse();
  }
}

abstract class _PowerUpNotified implements GameEvent {
  const factory _PowerUpNotified() = _$PowerUpNotifiedImpl;
}
