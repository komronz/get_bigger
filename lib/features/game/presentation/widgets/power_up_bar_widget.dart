// lib/features/game/presentation/widgets/power_up_bar_widget.dart

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../bloc/game_state.dart';

class PowerUpBarWidget extends StatelessWidget {
  const PowerUpBarWidget({
    super.key,
    required this.undoCount,
    required this.swapCount,
    required this.deleteCount,
    required this.activePowerUp,
    required this.onUndo,
    required this.onSwap,
    required this.onDelete,
    required this.onCancel,
  });

  final int undoCount;
  final int swapCount;
  final int deleteCount;
  final ActivePowerUp activePowerUp;
  final VoidCallback onUndo;
  final VoidCallback onSwap;
  final VoidCallback onDelete;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    final isActive = activePowerUp != ActivePowerUp.none;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF3E0),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isActive ? const Color(0xFFFF8F00) : const Color(0xFFFFE0B2),
          width: isActive ? 2 : 1,
        ),
      ),
      child: isActive
          ? _ActiveBar(activePowerUp: activePowerUp, onCancel: onCancel)
          : _IdleBar(
              undoCount: undoCount,
              swapCount: swapCount,
              deleteCount: deleteCount,
              onUndo: onUndo,
              onSwap: onSwap,
              onDelete: onDelete,
            ),
    );
  }
}

class _IdleBar extends StatelessWidget {
  const _IdleBar({
    required this.undoCount,
    required this.swapCount,
    required this.deleteCount,
    required this.onUndo,
    required this.onSwap,
    required this.onDelete,
  });

  final int undoCount;
  final int swapCount;
  final int deleteCount;
  final VoidCallback onUndo;
  final VoidCallback onSwap;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _PowerUpButton(
          icon: '↩️',
          label: 'power_up_bar.undo'.tr(),
          count: undoCount,
          onTap: undoCount > 0 ? onUndo : null,
        ),
        _PowerUpButton(
          icon: '🔀',
          label: 'power_up_bar.swap'.tr(),
          count: swapCount,
          onTap: swapCount > 0 ? onSwap : null,
        ),
        _PowerUpButton(
          icon: '🗑️',
          label: 'power_up_bar.delete'.tr(),
          count: deleteCount,
          onTap: deleteCount > 0 ? onDelete : null,
        ),
      ],
    );
  }
}

class _ActiveBar extends StatelessWidget {
  const _ActiveBar({
    required this.activePowerUp,
    required this.onCancel,
  });

  final ActivePowerUp activePowerUp;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    final String message;
    switch (activePowerUp) {
      case ActivePowerUp.swap:
        message = 'power_up_bar.hint_swap'.tr();
      case ActivePowerUp.delete:
        message = 'power_up_bar.hint_delete'.tr();
      case ActivePowerUp.none:
        message = '';
    }

    return Row(
      children: [
        Expanded(
          child: Text(
            message,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Color(0xFF5D4037),
              fontSize: 14,
            ),
          ),
        ),
        GestureDetector(
          onTap: onCancel,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFFFF8F00),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'power_up_bar.cancel'.tr(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _PowerUpButton extends StatelessWidget {
  const _PowerUpButton({
    required this.icon,
    required this.label,
    required this.count,
    required this.onTap,
  });

  final String icon;
  final String label;
  final int count;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final enabled = onTap != null;
    return GestureDetector(
      onTap: onTap,
      child: Opacity(
        opacity: enabled ? 1.0 : 0.4,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Text(icon, style: const TextStyle(fontSize: 26)),
                Positioned(
                  top: -4,
                  right: -8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                    decoration: BoxDecoration(
                      color: const Color(0xFF5D4037),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      '$count',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 2),
            Text(
              label,
              style: TextStyle(
                fontSize: 10,
                color: enabled
                    ? const Color(0xFF5D4037)
                    : const Color(0xFF9E9E9E),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
