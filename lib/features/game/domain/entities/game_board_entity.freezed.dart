// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_board_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GameBoardEntity {
  List<List<TileEntity?>> get grid => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  int get bestScore => throw _privateConstructorUsedError;
  bool get isGameOver => throw _privateConstructorUsedError;
  bool get isWon => throw _privateConstructorUsedError;

  /// Create a copy of GameBoardEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameBoardEntityCopyWith<GameBoardEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameBoardEntityCopyWith<$Res> {
  factory $GameBoardEntityCopyWith(
    GameBoardEntity value,
    $Res Function(GameBoardEntity) then,
  ) = _$GameBoardEntityCopyWithImpl<$Res, GameBoardEntity>;
  @useResult
  $Res call({
    List<List<TileEntity?>> grid,
    int score,
    int bestScore,
    bool isGameOver,
    bool isWon,
  });
}

/// @nodoc
class _$GameBoardEntityCopyWithImpl<$Res, $Val extends GameBoardEntity>
    implements $GameBoardEntityCopyWith<$Res> {
  _$GameBoardEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameBoardEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grid = null,
    Object? score = null,
    Object? bestScore = null,
    Object? isGameOver = null,
    Object? isWon = null,
  }) {
    return _then(
      _value.copyWith(
            grid: null == grid
                ? _value.grid
                : grid // ignore: cast_nullable_to_non_nullable
                      as List<List<TileEntity?>>,
            score: null == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                      as int,
            bestScore: null == bestScore
                ? _value.bestScore
                : bestScore // ignore: cast_nullable_to_non_nullable
                      as int,
            isGameOver: null == isGameOver
                ? _value.isGameOver
                : isGameOver // ignore: cast_nullable_to_non_nullable
                      as bool,
            isWon: null == isWon
                ? _value.isWon
                : isWon // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GameBoardEntityImplCopyWith<$Res>
    implements $GameBoardEntityCopyWith<$Res> {
  factory _$$GameBoardEntityImplCopyWith(
    _$GameBoardEntityImpl value,
    $Res Function(_$GameBoardEntityImpl) then,
  ) = __$$GameBoardEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<List<TileEntity?>> grid,
    int score,
    int bestScore,
    bool isGameOver,
    bool isWon,
  });
}

/// @nodoc
class __$$GameBoardEntityImplCopyWithImpl<$Res>
    extends _$GameBoardEntityCopyWithImpl<$Res, _$GameBoardEntityImpl>
    implements _$$GameBoardEntityImplCopyWith<$Res> {
  __$$GameBoardEntityImplCopyWithImpl(
    _$GameBoardEntityImpl _value,
    $Res Function(_$GameBoardEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameBoardEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grid = null,
    Object? score = null,
    Object? bestScore = null,
    Object? isGameOver = null,
    Object? isWon = null,
  }) {
    return _then(
      _$GameBoardEntityImpl(
        grid: null == grid
            ? _value._grid
            : grid // ignore: cast_nullable_to_non_nullable
                  as List<List<TileEntity?>>,
        score: null == score
            ? _value.score
            : score // ignore: cast_nullable_to_non_nullable
                  as int,
        bestScore: null == bestScore
            ? _value.bestScore
            : bestScore // ignore: cast_nullable_to_non_nullable
                  as int,
        isGameOver: null == isGameOver
            ? _value.isGameOver
            : isGameOver // ignore: cast_nullable_to_non_nullable
                  as bool,
        isWon: null == isWon
            ? _value.isWon
            : isWon // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$GameBoardEntityImpl implements _GameBoardEntity {
  const _$GameBoardEntityImpl({
    required final List<List<TileEntity?>> grid,
    required this.score,
    required this.bestScore,
    this.isGameOver = false,
    this.isWon = false,
  }) : _grid = grid;

  final List<List<TileEntity?>> _grid;
  @override
  List<List<TileEntity?>> get grid {
    if (_grid is EqualUnmodifiableListView) return _grid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_grid);
  }

  @override
  final int score;
  @override
  final int bestScore;
  @override
  @JsonKey()
  final bool isGameOver;
  @override
  @JsonKey()
  final bool isWon;

  @override
  String toString() {
    return 'GameBoardEntity(grid: $grid, score: $score, bestScore: $bestScore, isGameOver: $isGameOver, isWon: $isWon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameBoardEntityImpl &&
            const DeepCollectionEquality().equals(other._grid, _grid) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.bestScore, bestScore) ||
                other.bestScore == bestScore) &&
            (identical(other.isGameOver, isGameOver) ||
                other.isGameOver == isGameOver) &&
            (identical(other.isWon, isWon) || other.isWon == isWon));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_grid),
    score,
    bestScore,
    isGameOver,
    isWon,
  );

  /// Create a copy of GameBoardEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameBoardEntityImplCopyWith<_$GameBoardEntityImpl> get copyWith =>
      __$$GameBoardEntityImplCopyWithImpl<_$GameBoardEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _GameBoardEntity implements GameBoardEntity {
  const factory _GameBoardEntity({
    required final List<List<TileEntity?>> grid,
    required final int score,
    required final int bestScore,
    final bool isGameOver,
    final bool isWon,
  }) = _$GameBoardEntityImpl;

  @override
  List<List<TileEntity?>> get grid;
  @override
  int get score;
  @override
  int get bestScore;
  @override
  bool get isGameOver;
  @override
  bool get isWon;

  /// Create a copy of GameBoardEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameBoardEntityImplCopyWith<_$GameBoardEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
