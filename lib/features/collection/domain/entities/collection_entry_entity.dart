// lib/features/collection/domain/entities/collection_entry_entity.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_entry_entity.freezed.dart';

@freezed
abstract class CollectionEntryEntity with _$CollectionEntryEntity {
  const factory CollectionEntryEntity({
    required int level,
    required bool isUnlocked,
    DateTime? unlockedAt,
  }) = _CollectionEntryEntity;
}
