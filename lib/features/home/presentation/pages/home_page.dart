// lib/features/home/presentation/pages/home_page.dart

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../collection/presentation/pages/collection_page.dart';
import '../../../game/presentation/pages/game_page.dart';
import '../../../settings/presentation/pages/settings_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.backgroundGradient,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const Spacer(flex: 2),
              // Logo / title area
              _buildLogo(context),
              const Spacer(flex: 2),
              // Animal preview row
              _buildAnimalPreview(),
              const Spacer(flex: 3),
              // Buttons
              _buildButtons(context, size),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogo(BuildContext context) {
    return Column(
      children: [
        // Main emoji cluster
        SizedBox(
          height: 100,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                left: MediaQuery.of(context).size.width / 2 - 80,
                child: _EmojiCircle(emoji: '🐜', size: 56, color: const Color(0xFFF5E6C8)),
              ),
              Positioned(
                right: MediaQuery.of(context).size.width / 2 - 80,
                child: _EmojiCircle(emoji: '👑', size: 56, color: const Color(0xFFFFD700)),
              ),
              _EmojiCircle(emoji: '🐉', size: 72, color: const Color(0xFFFF6B35)),
            ],
          ),
        ),
        const SizedBox(height: 20),
        // Title
        const Text(
          'Animal Merge',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w900,
            color: Color(0xFF3D2B1F),
            letterSpacing: -1.5,
            height: 1.0,
          ),
        ),
        const Text(
          '2048',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w900,
            color: AppColors.accent,
            letterSpacing: 4,
            height: 1.1,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'home.tagline'.tr(),
          style: const TextStyle(
            fontSize: 15,
            color: Color(0xFF7A5C44),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildAnimalPreview() {
    const animals = ['🐜', '🐞', '🐭', '🐱', '🦊', '🐺', '🦁', '🐉', '👑'];
    return SizedBox(
      height: 52,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: animals.length,
        separatorBuilder: (_, __) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 2),
          child: Icon(Icons.arrow_forward_ios_rounded, size: 12, color: Color(0xFFD4A574)),
        ),
        itemBuilder: (context, i) {
          return Text(animals[i], style: const TextStyle(fontSize: 28, height: 1.6));
        },
      ),
    );
  }

  Widget _buildButtons(BuildContext context, Size size) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          AppButton(
            label: 'home.play'.tr(),
            icon: Icons.play_arrow_rounded,
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute<void>(builder: (_) => const GamePage()),
            ),
            width: double.infinity,
            height: 58,
            fontSize: 18,
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: AppButton(
                  label: 'home.collection'.tr(),
                  icon: Icons.grid_view_rounded,
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(builder: (_) => const CollectionPage()),
                  ),
                  colors: const [Color(0xFF7B5EA7), Color(0xFF5E3D8A)],
                  height: 50,
                  fontSize: 14,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: AppButton(
                  label: 'home.settings'.tr(),
                  icon: Icons.settings_rounded,
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(builder: (_) => const SettingsPage()),
                  ),
                  colors: const [Color(0xFF546E7A), Color(0xFF37474F)],
                  height: 50,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _EmojiCircle extends StatelessWidget {
  const _EmojiCircle({
    required this.emoji,
    required this.size,
    required this.color,
  });

  final String emoji;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: color.withValues(alpha: 0.5),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: Text(emoji, style: TextStyle(fontSize: size * 0.5, height: 1.0)),
      ),
    );
  }
}
