// lib/core/constants/animal_constants.dart

enum AnimalRarity { common, uncommon, rare, epic, legendary }

class AnimalData {
  const AnimalData({
    required this.level,
    required this.name,
    required this.emoji,
    required this.tileColor,
    required this.textColor,
    this.isRare = false,
    this.rarity = AnimalRarity.common,
  });

  final int level;
  final String name;
  final String emoji;
  final int tileColor; // ARGB hex, no Flutter dependency
  final int textColor;
  final bool isRare;
  final AnimalRarity rarity;
}

const List<AnimalData> kAnimals = [
  // ── Common ──────────────────────────────────────────────────────────────
  AnimalData(level: 1,  name: 'Ant',          emoji: '🐜', tileColor: 0xFFF5E6C8, textColor: 0xFF5D4037),
  AnimalData(level: 2,  name: 'Ladybug',       emoji: '🐞', tileColor: 0xFFFFCDD2, textColor: 0xFFC62828),
  AnimalData(level: 3,  name: 'Cricket',       emoji: '🦗', tileColor: 0xFFDCEDC8, textColor: 0xFF33691E),
  AnimalData(level: 4,  name: 'Beetle',        emoji: '🪲', tileColor: 0xFFD7CCC8, textColor: 0xFF3E2723),
  AnimalData(level: 5,  name: 'Mouse',         emoji: '🐭', tileColor: 0xFFE1BEE7, textColor: 0xFF6A1B9A),
  AnimalData(level: 6,  name: 'Hamster',       emoji: '🐹', tileColor: 0xFFFFE0B2, textColor: 0xFFE65100),
  AnimalData(level: 7,  name: 'Rabbit',        emoji: '🐰', tileColor: 0xFFFCE4EC, textColor: 0xFFAD1457,
      rarity: AnimalRarity.uncommon),
  // ── Uncommon ────────────────────────────────────────────────────────────
  AnimalData(level: 8,  name: 'Cat',           emoji: '🐱', tileColor: 0xFFFFF9C4, textColor: 0xFFF57F17,
      rarity: AnimalRarity.uncommon),
  AnimalData(level: 9,  name: 'Dog',           emoji: '🐶', tileColor: 0xFFFFE082, textColor: 0xFFF57F17,
      rarity: AnimalRarity.uncommon),
  AnimalData(level: 10, name: 'Fox',           emoji: '🦊', tileColor: 0xFFFFCCBC, textColor: 0xFFBF360C,
      rarity: AnimalRarity.uncommon),
  AnimalData(level: 11, name: 'Wolf',          emoji: '🐺', tileColor: 0xFFB0BEC5, textColor: 0xFF1A237E,
      rarity: AnimalRarity.rare),
  AnimalData(level: 12, name: 'Lynx',          emoji: '🐈', tileColor: 0xFFCFD8DC, textColor: 0xFF263238,
      rarity: AnimalRarity.rare),
  // ── Rare ────────────────────────────────────────────────────────────────
  AnimalData(level: 13, name: 'Leopard',       emoji: '🐆', tileColor: 0xFFFFF176, textColor: 0xFF33691E,
      rarity: AnimalRarity.rare),
  AnimalData(level: 14, name: 'Tiger',         emoji: '🐯', tileColor: 0xFFFF8A65, textColor: 0xFFFFFFFF,
      rarity: AnimalRarity.rare),
  AnimalData(level: 15, name: 'Lion',          emoji: '🦁', tileColor: 0xFFFFB300, textColor: 0xFFFFFFFF,
      rarity: AnimalRarity.rare, isRare: true),
  AnimalData(level: 16, name: 'Bear',          emoji: '🐻', tileColor: 0xFF8D6E63, textColor: 0xFFFFFFFF,
      rarity: AnimalRarity.epic),
  AnimalData(level: 17, name: 'Gorilla',       emoji: '🦍', tileColor: 0xFF546E7A, textColor: 0xFFFFFFFF,
      rarity: AnimalRarity.epic),
  // ── Epic ────────────────────────────────────────────────────────────────
  AnimalData(level: 18, name: 'Rhino',         emoji: '🦏', tileColor: 0xFF90A4AE, textColor: 0xFF263238,
      rarity: AnimalRarity.epic),
  AnimalData(level: 19, name: 'Hippo',         emoji: '🦛', tileColor: 0xFF9E9E9E, textColor: 0xFF212121,
      rarity: AnimalRarity.epic),
  AnimalData(level: 20, name: 'Elephant',      emoji: '🐘', tileColor: 0xFF7986CB, textColor: 0xFFFFFFFF,
      rarity: AnimalRarity.epic, isRare: true),
  AnimalData(level: 21, name: 'Mammoth',       emoji: '🦣', tileColor: 0xFF5C6BC0, textColor: 0xFFFFFFFF,
      rarity: AnimalRarity.legendary),
  // ── Legendary ───────────────────────────────────────────────────────────
  AnimalData(level: 22, name: 'Dinosaur',      emoji: '🦕', tileColor: 0xFF43A047, textColor: 0xFFFFFFFF,
      rarity: AnimalRarity.legendary, isRare: true),
  AnimalData(level: 23, name: 'Dragon',        emoji: '🐉', tileColor: 0xFFE53935, textColor: 0xFFFFFFFF,
      rarity: AnimalRarity.legendary, isRare: true),
  AnimalData(level: 24, name: 'Phoenix',       emoji: '🦅', tileColor: 0xFFFF6D00, textColor: 0xFFFFFFFF,
      rarity: AnimalRarity.legendary, isRare: true),
  AnimalData(level: 25, name: 'Golden Dragon', emoji: '👑', tileColor: 0xFFFFD700, textColor: 0xFF212121,
      rarity: AnimalRarity.legendary, isRare: true),
];

AnimalData animalForLevel(int level) {
  final clamped = level.clamp(1, kAnimals.length);
  return kAnimals[clamped - 1];
}

const Map<AnimalRarity, String> kRarityLabel = {
  AnimalRarity.common:    'Common',
  AnimalRarity.uncommon:  'Uncommon',
  AnimalRarity.rare:      'Rare',
  AnimalRarity.epic:      'Epic',
  AnimalRarity.legendary: 'Legendary',
};

const Map<AnimalRarity, int> kRarityColor = {
  AnimalRarity.common:    0xFF9E9E9E,
  AnimalRarity.uncommon:  0xFF4CAF50,
  AnimalRarity.rare:      0xFF2196F3,
  AnimalRarity.epic:      0xFF9C27B0,
  AnimalRarity.legendary: 0xFFFF9800,
};
