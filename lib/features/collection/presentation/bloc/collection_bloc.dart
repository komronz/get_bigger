// lib/features/collection/presentation/bloc/collection_bloc.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_collection_usecase.dart';
import '../../domain/usecases/unlock_animal_usecase.dart';
import 'collection_event.dart';
import 'collection_state.dart';

class CollectionBloc extends Bloc<CollectionEvent, CollectionState> {
  CollectionBloc({
    required GetCollectionUseCase getCollection,
    required UnlockAnimalUseCase unlockAnimal,
  })  : _getCollection = getCollection,
        _unlockAnimal = unlockAnimal,
        super(const CollectionState.initial()) {
    on<CollectionEvent>(
      (event, emit) => event.map(
        loaded: (_) => _onLoaded(emit),
        animalUnlocked: (e) => _onAnimalUnlocked(e.level, emit),
      ),
    );
  }

  final GetCollectionUseCase _getCollection;
  final UnlockAnimalUseCase _unlockAnimal;

  Future<void> _onLoaded(Emitter<CollectionState> emit) async {
    emit(const CollectionState.loading());
    final result = await _getCollection();
    result.fold(
      (failure) => emit(CollectionState.error(message: failure.message)),
      (entries) => emit(CollectionState.loaded(entries: entries)),
    );
  }

  Future<void> _onAnimalUnlocked(
    int level,
    Emitter<CollectionState> emit,
  ) async {
    await _unlockAnimal(level);
    await _onLoaded(emit);
  }
}
