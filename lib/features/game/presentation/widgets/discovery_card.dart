// lib/features/game/presentation/widgets/discovery_card.dart

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/animal_constants.dart';
import '../../../../core/theme/app_colors.dart';

class DiscoveryCard extends StatefulWidget {
  const DiscoveryCard({
    super.key,
    required this.level,
    required this.onDismiss,
  });

  final int level;
  final VoidCallback onDismiss;

  @override
  State<DiscoveryCard> createState() => _DiscoveryCardState();
}

class _DiscoveryCardState extends State<DiscoveryCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnim;
  late Animation<double> _opacityAnim;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _scaleAnim = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
    );
    _opacityAnim = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.4, curve: Curves.easeOut),
      ),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final animal = animalForLevel(widget.level);
    final tileColor = Color(animal.tileColor);
    final isRare = animal.isRare;

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Opacity(
          opacity: _opacityAnim.value,
          child: Transform.scale(
            scale: _scaleAnim.value,
            child: child,
          ),
        );
      },
      child: GestureDetector(
        onTap: widget.onDismiss,
        child: Container(
          constraints: const BoxConstraints(maxWidth: 300),
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(28),
            boxShadow: [
              BoxShadow(
                color: tileColor.withValues(alpha: 0.4),
                blurRadius: 40,
                offset: const Offset(0, 12),
                spreadRadius: 4,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Discovery badge
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                decoration: BoxDecoration(
                  color: isRare
                      ? const Color(0xFFFFD700)
                      : AppColors.accent.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  isRare ? 'discovery.legendary'.tr() : 'discovery.new_animal'.tr(),
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w800,
                    color: isRare ? const Color(0xFF7B5E00) : AppColors.accent,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // Emoji
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: isRare ? null : tileColor,
                  gradient: isRare
                      ? const LinearGradient(
                          colors: [Color(0xFFFFD700), Color(0xFFFF6B35)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        )
                      : null,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: tileColor.withValues(alpha: 0.5),
                      blurRadius: 20,
                      spreadRadius: 4,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    animal.emoji,
                    style: const TextStyle(fontSize: 52, height: 1.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                animal.name,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF3D2B1F),
                  height: 1.0,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'discovery.level_unlocked'.tr(namedArgs: {'level': '${widget.level}'}),
                style: const TextStyle(
                  fontSize: 15,
                  color: Color(0xFF7A5C44),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 28),
              GestureDetector(
                onTap: widget.onDismiss,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: isRare
                          ? [const Color(0xFFFFD700), const Color(0xFFFFA500)]
                          : AppColors.buttonGradient,
                    ),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: (isRare
                                ? const Color(0xFFFFD700)
                                : AppColors.accent)
                            .withValues(alpha: 0.4),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Text(
                    'discovery.awesome'.tr(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
