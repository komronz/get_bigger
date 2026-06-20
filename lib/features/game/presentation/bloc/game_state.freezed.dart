// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GameState {
  GameStatus get status => throw _privateConstructorUsedError;
  GameBoardEntity? get board => throw _privateConstructorUsedError;
  int? get newlyDiscoveredLevel => throw _privateConstructorUsedError;
  bool get showingDiscovery => throw _privateConstructorUsedError;
  bool get continueAfterWin => throw _privateConstructorUsedError;
  String? get errorMessage =>
      throw _privateConstructorUsedError; // ── Power-ups ────────────────────────────────────────────────────────────
  int get undoCount => throw _privateConstructorUsedError;
  int get swapCount => throw _privateConstructorUsedError;
  int get deleteCount => throw _privateConstructorUsedError;
  ActivePowerUp get activePowerUp => throw _privateConstructorUsedError;
  int? get swapFirstRow => throw _privateConstructorUsedError;
  int? get swapFirstCol =>
      throw _privateConstructorUsedError; // Transient notification shown as a snackbar (e.g. "Undo unlocked!")
  String? get powerUpEarned => throw _privateConstructorUsedError;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
  @useResult
  $Res call({
    GameStatus status,
    GameBoardEntity? board,
    int? newlyDiscoveredLevel,
    bool showingDiscovery,
    bool continueAfterWin,
    String? errorMessage,
    int undoCount,
    int swapCount,
    int deleteCount,
    ActivePowerUp activePowerUp,
    int? swapFirstRow,
    int? swapFirstCol,
    String? powerUpEarned,
  });

  $GameBoardEntityCopyWith<$Res>? get board;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? board = freezed,
    Object? newlyDiscoveredLevel = freezed,
    Object? showingDiscovery = null,
    Object? continueAfterWin = null,
    Object? errorMessage = freezed,
    Object? undoCount = null,
    Object? swapCount = null,
    Object? deleteCount = null,
    Object? activePowerUp = null,
    Object? swapFirstRow = freezed,
    Object? swapFirstCol = freezed,
    Object? powerUpEarned = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as GameStatus,
            board: freezed == board
                ? _value.board
                : board // ignore: cast_nullable_to_non_nullable
                      as GameBoardEntity?,
            newlyDiscoveredLevel: freezed == newlyDiscoveredLevel
                ? _value.newlyDiscoveredLevel
                : newlyDiscoveredLevel // ignore: cast_nullable_to_non_nullable
                      as int?,
            showingDiscovery: null == showingDiscovery
                ? _value.showingDiscovery
                : showingDiscovery // ignore: cast_nullable_to_non_nullable
                      as bool,
            continueAfterWin: null == continueAfterWin
                ? _value.continueAfterWin
                : continueAfterWin // ignore: cast_nullable_to_non_nullable
                      as bool,
            errorMessage: freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String?,
            undoCount: null == undoCount
                ? _value.undoCount
                : undoCount // ignore: cast_nullable_to_non_nullable
                      as int,
            swapCount: null == swapCount
                ? _value.swapCount
                : swapCount // ignore: cast_nullable_to_non_nullable
                      as int,
            deleteCount: null == deleteCount
                ? _value.deleteCount
                : deleteCount // ignore: cast_nullable_to_non_nullable
                      as int,
            activePowerUp: null == activePowerUp
                ? _value.activePowerUp
                : activePowerUp // ignore: cast_nullable_to_non_nullable
                      as ActivePowerUp,
            swapFirstRow: freezed == swapFirstRow
                ? _value.swapFirstRow
                : swapFirstRow // ignore: cast_nullable_to_non_nullable
                      as int?,
            swapFirstCol: freezed == swapFirstCol
                ? _value.swapFirstCol
                : swapFirstCol // ignore: cast_nullable_to_non_nullable
                      as int?,
            powerUpEarned: freezed == powerUpEarned
                ? _value.powerUpEarned
                : powerUpEarned // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameBoardEntityCopyWith<$Res>? get board {
    if (_value.board == null) {
      return null;
    }

    return $GameBoardEntityCopyWith<$Res>(_value.board!, (value) {
      return _then(_value.copyWith(board: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameStateImplCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$GameStateImplCopyWith(
    _$GameStateImpl value,
    $Res Function(_$GameStateImpl) then,
  ) = __$$GameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    GameStatus status,
    GameBoardEntity? board,
    int? newlyDiscoveredLevel,
    bool showingDiscovery,
    bool continueAfterWin,
    String? errorMessage,
    int undoCount,
    int swapCount,
    int deleteCount,
    ActivePowerUp activePowerUp,
    int? swapFirstRow,
    int? swapFirstCol,
    String? powerUpEarned,
  });

  @override
  $GameBoardEntityCopyWith<$Res>? get board;
}

/// @nodoc
class __$$GameStateImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateImpl>
    implements _$$GameStateImplCopyWith<$Res> {
  __$$GameStateImplCopyWithImpl(
    _$GameStateImpl _value,
    $Res Function(_$GameStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? board = freezed,
    Object? newlyDiscoveredLevel = freezed,
    Object? showingDiscovery = null,
    Object? continueAfterWin = null,
    Object? errorMessage = freezed,
    Object? undoCount = null,
    Object? swapCount = null,
    Object? deleteCount = null,
    Object? activePowerUp = null,
    Object? swapFirstRow = freezed,
    Object? swapFirstCol = freezed,
    Object? powerUpEarned = freezed,
  }) {
    return _then(
      _$GameStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as GameStatus,
        board: freezed == board
            ? _value.board
            : board // ignore: cast_nullable_to_non_nullable
                  as GameBoardEntity?,
        newlyDiscoveredLevel: freezed == newlyDiscoveredLevel
            ? _value.newlyDiscoveredLevel
            : newlyDiscoveredLevel // ignore: cast_nullable_to_non_nullable
                  as int?,
        showingDiscovery: null == showingDiscovery
            ? _value.showingDiscovery
            : showingDiscovery // ignore: cast_nullable_to_non_nullable
                  as bool,
        continueAfterWin: null == continueAfterWin
            ? _value.continueAfterWin
            : continueAfterWin // ignore: cast_nullable_to_non_nullable
                  as bool,
        errorMessage: freezed == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
        undoCount: null == undoCount
            ? _value.undoCount
            : undoCount // ignore: cast_nullable_to_non_nullable
                  as int,
        swapCount: null == swapCount
            ? _value.swapCount
            : swapCount // ignore: cast_nullable_to_non_nullable
                  as int,
        deleteCount: null == deleteCount
            ? _value.deleteCount
            : deleteCount // ignore: cast_nullable_to_non_nullable
                  as int,
        activePowerUp: null == activePowerUp
            ? _value.activePowerUp
            : activePowerUp // ignore: cast_nullable_to_non_nullable
                  as ActivePowerUp,
        swapFirstRow: freezed == swapFirstRow
            ? _value.swapFirstRow
            : swapFirstRow // ignore: cast_nullable_to_non_nullable
                  as int?,
        swapFirstCol: freezed == swapFirstCol
            ? _value.swapFirstCol
            : swapFirstCol // ignore: cast_nullable_to_non_nullable
                  as int?,
        powerUpEarned: freezed == powerUpEarned
            ? _value.powerUpEarned
            : powerUpEarned // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$GameStateImpl implements _GameState {
  const _$GameStateImpl({
    this.status = GameStatus.initial,
    this.board,
    this.newlyDiscoveredLevel,
    this.showingDiscovery = false,
    this.continueAfterWin = false,
    this.errorMessage,
    this.undoCount = 1,
    this.swapCount = 1,
    this.deleteCount = 1,
    this.activePowerUp = ActivePowerUp.none,
    this.swapFirstRow,
    this.swapFirstCol,
    this.powerUpEarned,
  });

  @override
  @JsonKey()
  final GameStatus status;
  @override
  final GameBoardEntity? board;
  @override
  final int? newlyDiscoveredLevel;
  @override
  @JsonKey()
  final bool showingDiscovery;
  @override
  @JsonKey()
  final bool continueAfterWin;
  @override
  final String? errorMessage;
  // ── Power-ups ────────────────────────────────────────────────────────────
  @override
  @JsonKey()
  final int undoCount;
  @override
  @JsonKey()
  final int swapCount;
  @override
  @JsonKey()
  final int deleteCount;
  @override
  @JsonKey()
  final ActivePowerUp activePowerUp;
  @override
  final int? swapFirstRow;
  @override
  final int? swapFirstCol;
  // Transient notification shown as a snackbar (e.g. "Undo unlocked!")
  @override
  final String? powerUpEarned;

  @override
  String toString() {
    return 'GameState(status: $status, board: $board, newlyDiscoveredLevel: $newlyDiscoveredLevel, showingDiscovery: $showingDiscovery, continueAfterWin: $continueAfterWin, errorMessage: $errorMessage, undoCount: $undoCount, swapCount: $swapCount, deleteCount: $deleteCount, activePowerUp: $activePowerUp, swapFirstRow: $swapFirstRow, swapFirstCol: $swapFirstCol, powerUpEarned: $powerUpEarned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.board, board) || other.board == board) &&
            (identical(other.newlyDiscoveredLevel, newlyDiscoveredLevel) ||
                other.newlyDiscoveredLevel == newlyDiscoveredLevel) &&
            (identical(other.showingDiscovery, showingDiscovery) ||
                other.showingDiscovery == showingDiscovery) &&
            (identical(other.continueAfterWin, continueAfterWin) ||
                other.continueAfterWin == continueAfterWin) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.undoCount, undoCount) ||
                other.undoCount == undoCount) &&
            (identical(other.swapCount, swapCount) ||
                other.swapCount == swapCount) &&
            (identical(other.deleteCount, deleteCount) ||
                other.deleteCount == deleteCount) &&
            (identical(other.activePowerUp, activePowerUp) ||
                other.activePowerUp == activePowerUp) &&
            (identical(other.swapFirstRow, swapFirstRow) ||
                other.swapFirstRow == swapFirstRow) &&
            (identical(other.swapFirstCol, swapFirstCol) ||
                other.swapFirstCol == swapFirstCol) &&
            (identical(other.powerUpEarned, powerUpEarned) ||
                other.powerUpEarned == powerUpEarned));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    board,
    newlyDiscoveredLevel,
    showingDiscovery,
    continueAfterWin,
    errorMessage,
    undoCount,
    swapCount,
    deleteCount,
    activePowerUp,
    swapFirstRow,
    swapFirstCol,
    powerUpEarned,
  );

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      __$$GameStateImplCopyWithImpl<_$GameStateImpl>(this, _$identity);
}

abstract class _GameState implements GameState {
  const factory _GameState({
    final GameStatus status,
    final GameBoardEntity? board,
    final int? newlyDiscoveredLevel,
    final bool showingDiscovery,
    final bool continueAfterWin,
    final String? errorMessage,
    final int undoCount,
    final int swapCount,
    final int deleteCount,
    final ActivePowerUp activePowerUp,
    final int? swapFirstRow,
    final int? swapFirstCol,
    final String? powerUpEarned,
  }) = _$GameStateImpl;

  @override
  GameStatus get status;
  @override
  GameBoardEntity? get board;
  @override
  int? get newlyDiscoveredLevel;
  @override
  bool get showingDiscovery;
  @override
  bool get continueAfterWin;
  @override
  String? get errorMessage; // ── Power-ups ────────────────────────────────────────────────────────────
  @override
  int get undoCount;
  @override
  int get swapCount;
  @override
  int get deleteCount;
  @override
  ActivePowerUp get activePowerUp;
  @override
  int? get swapFirstRow;
  @override
  int? get swapFirstCol; // Transient notification shown as a snackbar (e.g. "Undo unlocked!")
  @override
  String? get powerUpEarned;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
