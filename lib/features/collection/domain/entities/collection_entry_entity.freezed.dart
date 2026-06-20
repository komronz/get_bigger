// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_entry_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CollectionEntryEntity {
  int get level => throw _privateConstructorUsedError;
  bool get isUnlocked => throw _privateConstructorUsedError;
  DateTime? get unlockedAt => throw _privateConstructorUsedError;

  /// Create a copy of CollectionEntryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectionEntryEntityCopyWith<CollectionEntryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionEntryEntityCopyWith<$Res> {
  factory $CollectionEntryEntityCopyWith(
    CollectionEntryEntity value,
    $Res Function(CollectionEntryEntity) then,
  ) = _$CollectionEntryEntityCopyWithImpl<$Res, CollectionEntryEntity>;
  @useResult
  $Res call({int level, bool isUnlocked, DateTime? unlockedAt});
}

/// @nodoc
class _$CollectionEntryEntityCopyWithImpl<
  $Res,
  $Val extends CollectionEntryEntity
>
    implements $CollectionEntryEntityCopyWith<$Res> {
  _$CollectionEntryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectionEntryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? isUnlocked = null,
    Object? unlockedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            level: null == level
                ? _value.level
                : level // ignore: cast_nullable_to_non_nullable
                      as int,
            isUnlocked: null == isUnlocked
                ? _value.isUnlocked
                : isUnlocked // ignore: cast_nullable_to_non_nullable
                      as bool,
            unlockedAt: freezed == unlockedAt
                ? _value.unlockedAt
                : unlockedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CollectionEntryEntityImplCopyWith<$Res>
    implements $CollectionEntryEntityCopyWith<$Res> {
  factory _$$CollectionEntryEntityImplCopyWith(
    _$CollectionEntryEntityImpl value,
    $Res Function(_$CollectionEntryEntityImpl) then,
  ) = __$$CollectionEntryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int level, bool isUnlocked, DateTime? unlockedAt});
}

/// @nodoc
class __$$CollectionEntryEntityImplCopyWithImpl<$Res>
    extends
        _$CollectionEntryEntityCopyWithImpl<$Res, _$CollectionEntryEntityImpl>
    implements _$$CollectionEntryEntityImplCopyWith<$Res> {
  __$$CollectionEntryEntityImplCopyWithImpl(
    _$CollectionEntryEntityImpl _value,
    $Res Function(_$CollectionEntryEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CollectionEntryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? isUnlocked = null,
    Object? unlockedAt = freezed,
  }) {
    return _then(
      _$CollectionEntryEntityImpl(
        level: null == level
            ? _value.level
            : level // ignore: cast_nullable_to_non_nullable
                  as int,
        isUnlocked: null == isUnlocked
            ? _value.isUnlocked
            : isUnlocked // ignore: cast_nullable_to_non_nullable
                  as bool,
        unlockedAt: freezed == unlockedAt
            ? _value.unlockedAt
            : unlockedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc

class _$CollectionEntryEntityImpl implements _CollectionEntryEntity {
  const _$CollectionEntryEntityImpl({
    required this.level,
    required this.isUnlocked,
    this.unlockedAt,
  });

  @override
  final int level;
  @override
  final bool isUnlocked;
  @override
  final DateTime? unlockedAt;

  @override
  String toString() {
    return 'CollectionEntryEntity(level: $level, isUnlocked: $isUnlocked, unlockedAt: $unlockedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionEntryEntityImpl &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.isUnlocked, isUnlocked) ||
                other.isUnlocked == isUnlocked) &&
            (identical(other.unlockedAt, unlockedAt) ||
                other.unlockedAt == unlockedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, level, isUnlocked, unlockedAt);

  /// Create a copy of CollectionEntryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionEntryEntityImplCopyWith<_$CollectionEntryEntityImpl>
  get copyWith =>
      __$$CollectionEntryEntityImplCopyWithImpl<_$CollectionEntryEntityImpl>(
        this,
        _$identity,
      );
}

abstract class _CollectionEntryEntity implements CollectionEntryEntity {
  const factory _CollectionEntryEntity({
    required final int level,
    required final bool isUnlocked,
    final DateTime? unlockedAt,
  }) = _$CollectionEntryEntityImpl;

  @override
  int get level;
  @override
  bool get isUnlocked;
  @override
  DateTime? get unlockedAt;

  /// Create a copy of CollectionEntryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionEntryEntityImplCopyWith<_$CollectionEntryEntityImpl>
  get copyWith => throw _privateConstructorUsedError;
}
