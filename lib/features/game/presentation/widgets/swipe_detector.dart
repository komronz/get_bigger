// lib/features/game/presentation/widgets/swipe_detector.dart

import 'package:flutter/material.dart';
import '../../../../core/utils/game_logic.dart';

class SwipeDetector extends StatelessWidget {
  const SwipeDetector({
    super.key,
    required this.child,
    required this.onSwipe,
    this.minSwipeDistance = 30.0,
  });

  final Widget child;
  final void Function(SwipeDirection) onSwipe;
  final double minSwipeDistance;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanEnd: (details) {
        final velocity = details.velocity.pixelsPerSecond;
        final dx = velocity.dx;
        final dy = velocity.dy;

        if (dx.abs() < minSwipeDistance && dy.abs() < minSwipeDistance) return;

        if (dx.abs() > dy.abs()) {
          onSwipe(dx > 0 ? SwipeDirection.right : SwipeDirection.left);
        } else {
          onSwipe(dy > 0 ? SwipeDirection.down : SwipeDirection.up);
        }
      },
      child: child,
    );
  }
}
