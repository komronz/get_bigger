// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TileEntity {
  String get id => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  bool get isNew => throw _privateConstructorUsedError;
  bool get isMerged => throw _privateConstructorUsedError;
  TileSpecialType get specialType => throw _privateConstructorUsedError;
  int get stuckTurnsRemaining => throw _privateConstructorUsedError;

  /// Create a copy of TileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TileEntityCopyWith<TileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TileEntityCopyWith<$Res> {
  factory $TileEntityCopyWith(
    TileEntity value,
    $Res Function(TileEntity) then,
  ) = _$TileEntityCopyWithImpl<$Res, TileEntity>;
  @useResult
  $Res call({
    String id,
    int level,
    bool isNew,
    bool isMerged,
    TileSpecialType specialType,
    int stuckTurnsRemaining,
  });
}

/// @nodoc
class _$TileEntityCopyWithImpl<$Res, $Val extends TileEntity>
    implements $TileEntityCopyWith<$Res> {
  _$TileEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? level = null,
    Object? isNew = null,
    Object? isMerged = null,
    Object? specialType = null,
    Object? stuckTurnsRemaining = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            level: null == level
                ? _value.level
                : level // ignore: cast_nullable_to_non_nullable
                      as int,
            isNew: null == isNew
                ? _value.isNew
                : isNew // ignore: cast_nullable_to_non_nullable
                      as bool,
            isMerged: null == isMerged
                ? _value.isMerged
                : isMerged // ignore: cast_nullable_to_non_nullable
                      as bool,
            specialType: null == specialType
                ? _value.specialType
                : specialType // ignore: cast_nullable_to_non_nullable
                      as TileSpecialType,
            stuckTurnsRemaining: null == stuckTurnsRemaining
                ? _value.stuckTurnsRemaining
                : stuckTurnsRemaining // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TileEntityImplCopyWith<$Res>
    implements $TileEntityCopyWith<$Res> {
  factory _$$TileEntityImplCopyWith(
    _$TileEntityImpl value,
    $Res Function(_$TileEntityImpl) then,
  ) = __$$TileEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    int level,
    bool isNew,
    bool isMerged,
    TileSpecialType specialType,
    int stuckTurnsRemaining,
  });
}

/// @nodoc
class __$$TileEntityImplCopyWithImpl<$Res>
    extends _$TileEntityCopyWithImpl<$Res, _$TileEntityImpl>
    implements _$$TileEntityImplCopyWith<$Res> {
  __$$TileEntityImplCopyWithImpl(
    _$TileEntityImpl _value,
    $Res Function(_$TileEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? level = null,
    Object? isNew = null,
    Object? isMerged = null,
    Object? specialType = null,
    Object? stuckTurnsRemaining = null,
  }) {
    return _then(
      _$TileEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        level: null == level
            ? _value.level
            : level // ignore: cast_nullable_to_non_nullable
                  as int,
        isNew: null == isNew
            ? _value.isNew
            : isNew // ignore: cast_nullable_to_non_nullable
                  as bool,
        isMerged: null == isMerged
            ? _value.isMerged
            : isMerged // ignore: cast_nullable_to_non_nullable
                  as bool,
        specialType: null == specialType
            ? _value.specialType
            : specialType // ignore: cast_nullable_to_non_nullable
                  as TileSpecialType,
        stuckTurnsRemaining: null == stuckTurnsRemaining
            ? _value.stuckTurnsRemaining
            : stuckTurnsRemaining // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$TileEntityImpl implements _TileEntity {
  const _$TileEntityImpl({
    required this.id,
    required this.level,
    this.isNew = false,
    this.isMerged = false,
    this.specialType = TileSpecialType.none,
    this.stuckTurnsRemaining = 0,
  });

  @override
  final String id;
  @override
  final int level;
  @override
  @JsonKey()
  final bool isNew;
  @override
  @JsonKey()
  final bool isMerged;
  @override
  @JsonKey()
  final TileSpecialType specialType;
  @override
  @JsonKey()
  final int stuckTurnsRemaining;

  @override
  String toString() {
    return 'TileEntity(id: $id, level: $level, isNew: $isNew, isMerged: $isMerged, specialType: $specialType, stuckTurnsRemaining: $stuckTurnsRemaining)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TileEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.isNew, isNew) || other.isNew == isNew) &&
            (identical(other.isMerged, isMerged) ||
                other.isMerged == isMerged) &&
            (identical(other.specialType, specialType) ||
                other.specialType == specialType) &&
            (identical(other.stuckTurnsRemaining, stuckTurnsRemaining) ||
                other.stuckTurnsRemaining == stuckTurnsRemaining));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    level,
    isNew,
    isMerged,
    specialType,
    stuckTurnsRemaining,
  );

  /// Create a copy of TileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TileEntityImplCopyWith<_$TileEntityImpl> get copyWith =>
      __$$TileEntityImplCopyWithImpl<_$TileEntityImpl>(this, _$identity);
}

abstract class _TileEntity implements TileEntity {
  const factory _TileEntity({
    required final String id,
    required final int level,
    final bool isNew,
    final bool isMerged,
    final TileSpecialType specialType,
    final int stuckTurnsRemaining,
  }) = _$TileEntityImpl;

  @override
  String get id;
  @override
  int get level;
  @override
  bool get isNew;
  @override
  bool get isMerged;
  @override
  TileSpecialType get specialType;
  @override
  int get stuckTurnsRemaining;

  /// Create a copy of TileEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TileEntityImplCopyWith<_$TileEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
