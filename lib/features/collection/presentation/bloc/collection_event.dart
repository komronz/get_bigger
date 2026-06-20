// lib/features/collection/presentation/bloc/collection_event.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_event.freezed.dart';

@freezed
abstract class CollectionEvent with _$CollectionEvent {
  const factory CollectionEvent.loaded() = _Loaded;
  const factory CollectionEvent.animalUnlocked({required int level}) = _AnimalUnlocked;
}
