// lib/core/theme/app_colors.dart

import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Background
  static const Color background = Color(0xFFFFF8F0);
  static const Color surface = Color(0xFFFFEFD5);

  // Board
  static const Color boardBackground = Color(0xFFD4A574);
  static const Color emptyCell = Color(0xFFE8C99A);

  // Text
  static const Color textPrimary = Color(0xFF3D2B1F);
  static const Color textSecondary = Color(0xFF7A5C44);
  static const Color textLight = Color(0xFFFFFFFF);

  // Accents
  static const Color accent = Color(0xFFFF6B35);
  static const Color accentSecondary = Color(0xFFFFD23F);
  static const Color success = Color(0xFF4CAF50);
  static const Color danger = Color(0xFFE53935);

  // Score panel
  static const Color scoreCard = Color(0xFFBB8540);
  static const Color bestScoreCard = Color(0xFF9B6B2F);

  // Gradients
  static const List<Color> backgroundGradient = [
    Color(0xFFFFF3E0),
    Color(0xFFFFE0B2),
    Color(0xFFFFF8F0),
  ];

  static const List<Color> headerGradient = [
    Color(0xFFFF8C42),
    Color(0xFFFF6B35),
  ];

  static const List<Color> buttonGradient = [
    Color(0xFFFF8C42),
    Color(0xFFE65100),
  ];

  static const List<Color> rareGradient = [
    Color(0xFFFFD700),
    Color(0xFFFF6B35),
    Color(0xFFE53935),
  ];
}
