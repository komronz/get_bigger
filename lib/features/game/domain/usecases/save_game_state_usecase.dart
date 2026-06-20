// lib/features/game/domain/usecases/save_game_state_usecase.dart

import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/game_board_entity.dart';
import '../repositories/game_repository.dart';

class SaveGameStateUseCase {
  const SaveGameStateUseCase(this._repository);
  final GameRepository _repository;

  Future<Either<Failure, Unit>> call(GameBoardEntity board) =>
      _repository.saveGameState(board);
}
