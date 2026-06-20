// lib/features/game/presentation/widgets/trap_info_sheet.dart

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TrapInfoSheet extends StatelessWidget {
  const TrapInfoSheet({super.key});

  static void show(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const TrapInfoSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.72,
      minChildSize: 0.4,
      maxChildSize: 0.92,
      expand: false,
      builder: (_, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Color(0xFFFFF8F0),
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: Column(
            children: [
              // Handle bar
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 4),
                child: Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD4A574),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              // Header
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 20, 16),
                child: Row(
                  children: [
                    const Text('⚠️', style: TextStyle(fontSize: 22)),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'traps.title'.tr(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF3D2B1F),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE8C99A),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.close_rounded,
                          size: 18,
                          color: Color(0xFF5D4037),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(height: 1, color: Color(0xFFE8C99A)),
              // Content
              Expanded(
                child: ListView(
                  controller: scrollController,
                  padding: const EdgeInsets.all(20),
                  children: [
                    _SectionLabel('traps.section_traps'.tr()),
                    _TrapCard(
                      emoji: '🪨',
                      name: 'traps.rock.name'.tr(),
                      color: const Color(0xFF90A4AE),
                      textColor: Colors.white,
                      badge: 'traps.rock.badge'.tr(),
                      badgeColor: const Color(0xFFEF5350),
                      description: 'traps.rock.desc'.tr(),
                      tips: [
                        'traps.rock.tip1'.tr(),
                        'traps.rock.tip2'.tr(),
                        'traps.rock.tip3'.tr(),
                      ],
                    ),
                    _TrapCard(
                      emoji: '🕸️',
                      name: 'traps.web.name'.tr(),
                      color: const Color(0xFFF1F3F4),
                      textColor: Colors.white,
                      badge: 'traps.web.badge'.tr(),
                      badgeColor: const Color(0xFFFF9800),
                      description: 'traps.web.desc'.tr(),
                      tips: [
                        'traps.web.tip1'.tr(),
                        'traps.web.tip2'.tr(),
                        'traps.web.tip3'.tr(),
                        'traps.web.tip4'.tr(),
                      ],
                    ),
                    const SizedBox(height: 24),
                    _SectionLabel('traps.section_special'.tr()),
                    _TrapCard(
                      emoji: '✨',
                      name: 'traps.golden.name'.tr(),
                      color: const Color(0xFF795548),
                      textColor: const Color(0xFF5D4037),
                      badge: 'traps.golden.badge'.tr(),
                      badgeColor: const Color(0xFFFFA000),
                      description: 'traps.golden.desc'.tr(),
                      tips: [
                        'traps.golden.tip1'.tr(),
                        'traps.golden.tip2'.tr(),
                        'traps.golden.tip3'.tr(),
                      ],
                    ),
                    _TrapCard(
                      emoji: '🍀',
                      name: 'traps.lucky.name'.tr(),
                      color: const Color(0xFF76FF03),
                      textColor: const Color(0xFF1B5E20),
                      badge: 'traps.lucky.badge'.tr(),
                      badgeColor: const Color(0xFF43A047),
                      description: 'traps.lucky.desc'.tr(),
                      tips: [
                        'traps.lucky.tip1'.tr(),
                        'traps.lucky.tip2'.tr(),
                        'traps.lucky.tip3'.tr(),
                      ],
                    ),
                    _TrapCard(
                      emoji: 'z z z',
                      name: 'traps.sleeping.name'.tr(),
                      color: const Color(0xFF7986CB),
                      textColor: Colors.white,
                      badge: 'traps.sleeping.badge'.tr(),
                      badgeColor: const Color(0xFF3949AB),
                      description: 'traps.sleeping.desc'.tr(),
                      tips: [
                        'traps.sleeping.tip1'.tr(),
                        'traps.sleeping.tip2'.tr(),
                        'traps.sleeping.tip3'.tr(),
                      ],
                    ),
                    const SizedBox(height: 24),
                    _SectionLabel('traps.section_powerups'.tr()),
                    _TrapCard(
                      emoji: '↩️',
                      name: 'traps.undo.name'.tr(),
                      color: const Color(0xFF5C6BC0),
                      textColor: Colors.white,
                      badge: 'traps.undo.badge'.tr(),
                      badgeColor: const Color(0xFF3949AB),
                      description: 'traps.undo.desc'.tr(),
                      tips: ['traps.undo.tip1'.tr(), 'traps.undo.tip2'.tr()],
                    ),
                    _TrapCard(
                      emoji: '🔀',
                      name: 'traps.swap.name'.tr(),
                      color: const Color(0xFF26A69A),
                      textColor: Colors.white,
                      badge: 'traps.swap.badge'.tr(),
                      badgeColor: const Color(0xFF00897B),
                      description: 'traps.swap.desc'.tr(),
                      tips: ['traps.swap.tip1'.tr(), 'traps.swap.tip2'.tr()],
                    ),
                    _TrapCard(
                      emoji: '🗑️',
                      name: 'traps.delete.name'.tr(),
                      color: const Color(0xFFEF5350),
                      textColor: Colors.white,
                      badge: 'traps.delete.badge'.tr(),
                      badgeColor: const Color(0xFFC62828),
                      description: 'traps.delete.desc'.tr(),
                      tips: [
                        'traps.delete.tip1'.tr(),
                        'traps.delete.tip2'.tr(),
                        'traps.delete.tip3'.tr(),
                      ],
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _SectionLabel extends StatelessWidget {
  const _SectionLabel(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        label.toUpperCase(),
        style: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w800,
          color: Color(0xFF7A5C44),
          letterSpacing: 1.4,
        ),
      ),
    );
  }
}

class _TrapCard extends StatelessWidget {
  const _TrapCard({
    required this.emoji,
    required this.name,
    required this.color,
    required this.textColor,
    required this.badge,
    required this.badgeColor,
    required this.description,
    required this.tips,
  });

  final String emoji;
  final String name;
  final Color color;
  final Color textColor;
  final String badge;
  final Color badgeColor;
  final String description;
  final List<String> tips;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header row
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.12),
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(18),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Center(
                    child: Text(
                      emoji,
                      style: TextStyle(
                        fontSize: emoji.length > 3 ? 11 : 24,
                        color: textColor,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF3D2B1F),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: badgeColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          badge,
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Description + tips
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xFF5D4037),
                    height: 1.5,
                  ),
                ),
                if (tips.isNotEmpty) ...[
                  const SizedBox(height: 10),
                  ...tips.map(
                    (tip) => Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '•  ',
                            style: TextStyle(
                              color: badgeColor,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              tip,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color(0xFF7A5C44),
                                height: 1.4,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
