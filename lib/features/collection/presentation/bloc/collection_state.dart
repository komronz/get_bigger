// lib/features/collection/presentation/bloc/collection_state.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/collection_entry_entity.dart';

part 'collection_state.freezed.dart';

@freezed
abstract class CollectionState with _$CollectionState {
  const factory CollectionState.initial() = _Initial;
  const factory CollectionState.loading() = _Loading;
  const factory CollectionState.loaded({
    required List<CollectionEntryEntity> entries,
  }) = _Loaded;
  const factory CollectionState.error({required String message}) = _Error;
}
