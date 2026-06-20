// lib/features/game/presentation/bloc/game_event.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/utils/game_logic.dart';

part 'game_event.freezed.dart';

@freezed
abstract class GameEvent with _$GameEvent {
  const factory GameEvent.started() = _Started;
  const factory GameEvent.swiped({required SwipeDirection direction}) = _Swiped;
  const factory GameEvent.reset() = _Reset;
  const factory GameEvent.discoveryDismissed() = _DiscoveryDismissed;
  const factory GameEvent.continueAfterWin() = _ContinueAfterWin;

  // ── Power-up events ───────────────────────────────────────────────────────
  const factory GameEvent.undoPressed() = _UndoPressed;
  const factory GameEvent.swapActivated() = _SwapActivated;
  const factory GameEvent.deleteActivated() = _DeleteActivated;

  /// Tap a tile at [row],[col] during an active power-up.
  const factory GameEvent.tileSelected({
    required int row,
    required int col,
  }) = _TileSelected;

  /// Cancel the active power-up without spending a use.
  const factory GameEvent.powerUpCancelled() = _PowerUpCancelled;

  /// Clear the transient powerUpEarned notification.
  const factory GameEvent.powerUpNotified() = _PowerUpNotified;
}
