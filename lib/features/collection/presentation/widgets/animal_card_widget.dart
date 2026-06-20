// lib/features/collection/presentation/widgets/animal_card_widget.dart

import 'package:flutter/material.dart';
import '../../../../core/constants/animal_constants.dart';

class AnimalCardWidget extends StatelessWidget {
  const AnimalCardWidget({
    super.key,
    required this.level,
    required this.isUnlocked,
  });

  final int level;
  final bool isUnlocked;

  @override
  Widget build(BuildContext context) {
    final animal = animalForLevel(level);
    final tileColor = Color(animal.tileColor);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: isUnlocked ? tileColor : const Color(0xFFE0E0E0),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: (isUnlocked ? tileColor : Colors.grey)
                .withValues(alpha: isUnlocked ? 0.4 : 0.2),
            blurRadius: isUnlocked ? 12 : 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          if (animal.isRare && isUnlocked)
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white.withValues(alpha: 0.15),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: isUnlocked
                        ? Text(
                            animal.emoji,
                            style: const TextStyle(fontSize: 36, height: 1.0),
                          )
                        : const Text(
                            '❓',
                            style: TextStyle(fontSize: 28, height: 1.0),
                          ),
                  ),
                ),
                Text(
                  isUnlocked ? animal.name : '???',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: isUnlocked
                        ? Color(animal.textColor)
                        : const Color(0xFF9E9E9E),
                    height: 1.1,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 2),
                Text(
                  'Lv.$level',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: isUnlocked
                        ? Color(animal.textColor).withValues(alpha: 0.7)
                        : const Color(0xFFBDBDBD),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
