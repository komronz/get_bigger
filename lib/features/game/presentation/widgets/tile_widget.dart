// lib/features/game/presentation/widgets/tile_widget.dart

import 'dart:math' show pow;

import 'package:flutter/material.dart';
import '../../../../core/constants/animal_constants.dart';
import '../../../../core/constants/app_constants.dart';
import '../../domain/entities/tile_entity.dart';

class TileWidget extends StatefulWidget {
  const TileWidget({
    super.key,
    required this.tile,
    required this.tileSize,
    this.isSelected = false,
    this.onTap,
  });

  final TileEntity tile;
  final double tileSize;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  State<TileWidget> createState() => _TileWidgetState();
}

class _TileWidgetState extends State<TileWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnim;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.tile.isMerged
          ? AppConstants.tileMergeDuration
          : AppConstants.tileAppearDuration,
    );
    _scaleAnim = widget.tile.isMerged
        ? TweenSequence<double>([
            TweenSequenceItem(tween: Tween(begin: 1.0, end: 1.18), weight: 50),
            TweenSequenceItem(tween: Tween(begin: 1.18, end: 1.0), weight: 50),
          ]).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut))
        : Tween<double>(begin: 0.0, end: 1.0).animate(
            CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
          );

    if (widget.tile.isNew || widget.tile.isMerged) {
      _controller.forward();
    } else {
      _controller.value = 1.0;
    }
  }

  @override
  void didUpdateWidget(TileWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.tile.isMerged && !oldWidget.tile.isMerged) {
      _controller..reset()..forward();
    } else if (widget.tile.isNew && !oldWidget.tile.isNew) {
      _controller..reset()..forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String _formatTileValue(int level) {
    final val = pow(2, level).toInt();
    if (val >= 1000000) {
      return '${(val / 1000000).toStringAsFixed(val % 1000000 == 0 ? 0 : 1)}M';
    }
    if (val >= 1000) return '${(val / 1000).round()}K';
    return val.toString();
  }

  @override
  Widget build(BuildContext context) {
    final tile = widget.tile;
    final special = tile.specialType;
    final isRock = special == TileSpecialType.rock;

    // Rock gets a special appearance — no animal data needed.
    if (isRock) return _buildRock();

    final animal = animalForLevel(tile.level);
    final baseColor = Color(animal.tileColor);
    final textColor = Color(animal.textColor);
    final isRare = animal.isRare;

    final isGolden = special == TileSpecialType.golden;
    final isLucky = special == TileSpecialType.lucky;
    final isSleeping = special == TileSpecialType.sleeping;
    final isWeb = special == TileSpecialType.spiderWeb;

    // Special-type colour overrides.
    Color tileColor = baseColor;
    if (isGolden) tileColor = const Color(0xFFFFD700);
    if (isLucky) tileColor = const Color(0xFF76FF03);

    final emojiSize = (widget.tileSize * 0.42).clamp(20.0, 48.0);
    final fontSize = (widget.tileSize * 0.11).clamp(8.0, 14.0);
    final badgeFontSize = (widget.tileSize * 0.115).clamp(8.0, 13.0);
    final tileValue = _formatTileValue(tile.level);
    final cornerR = BorderRadius.circular(widget.tileSize * 0.14);

    return AnimatedBuilder(
      animation: _scaleAnim,
      builder: (context, child) => Transform.scale(scale: _scaleAnim.value, child: child),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          width: widget.tileSize,
          height: widget.tileSize,
          decoration: BoxDecoration(
            color: (isRare || isGolden || isLucky) ? null : tileColor,
            gradient: (isRare || isGolden || isLucky)
                ? LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: isGolden
                        ? [const Color(0xFFFFE082), const Color(0xFFFFD700), const Color(0xFFFFA000)]
                        : isLucky
                            ? [const Color(0xFFCCFF90), const Color(0xFF76FF03), const Color(0xFF64DD17)]
                            : [tileColor, tileColor.withValues(alpha: 0.7), const Color(0xFFFFD700)],
                  )
                : null,
            borderRadius: cornerR,
            border: widget.isSelected
                ? Border.all(color: const Color(0xFFFF8F00), width: 3)
                : isGolden
                    ? Border.all(color: const Color(0xFFFFA000), width: 2)
                    : null,
            boxShadow: [
              BoxShadow(
                color: tileColor.withValues(alpha: isRare || isGolden ? 0.6 : 0.35),
                blurRadius: isRare || isGolden ? 16 : 8,
                offset: const Offset(0, 3),
                spreadRadius: isRare || isGolden ? 2 : 0,
              ),
            ],
          ),
          child: Stack(
            children: [
              // Level value badge (top-left).
              Positioned(
                top: widget.tileSize * 0.07,
                left: widget.tileSize * 0.08,
                child: Text(
                  tileValue,
                  style: TextStyle(
                    fontSize: badgeFontSize,
                    fontWeight: FontWeight.w900,
                    color: textColor.withValues(alpha: 0.75),
                    height: 1.0,
                  ),
                ),
              ),
              // Centred emoji + name.
              Positioned.fill(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(animal.emoji, style: TextStyle(fontSize: emojiSize, height: 1.1)),
                    const SizedBox(height: 2),
                    Text(
                      animal.name,
                      style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.w700,
                        color: textColor,
                        height: 1.0,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              // Special overlays.
              if (isSleeping || isWeb) _buildOverlay(isSleeping, isWeb, tile.stuckTurnsRemaining),
              if (isGolden)
                Positioned(
                  top: 2,
                  right: 4,
                  child: Text('✨', style: TextStyle(fontSize: widget.tileSize * 0.18)),
                ),
              if (isLucky)
                Positioned(
                  top: 2,
                  right: 4,
                  child: Text('🍀', style: TextStyle(fontSize: widget.tileSize * 0.18)),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRock() {
    final cornerR = BorderRadius.circular(widget.tileSize * 0.14);
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: widget.tileSize,
        height: widget.tileSize,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF90A4AE), Color(0xFF546E7A), Color(0xFF37474F)],
          ),
          borderRadius: cornerR,
          border: widget.isSelected
              ? Border.all(color: const Color(0xFFFF8F00), width: 3)
              : null,
          boxShadow: const [
            BoxShadow(color: Color(0x66000000), blurRadius: 8, offset: Offset(0, 3)),
          ],
        ),
        child: Center(
          child: Text(
            '🪨',
            style: TextStyle(fontSize: widget.tileSize * 0.42),
          ),
        ),
      ),
    );
  }

  Widget _buildOverlay(bool isSleeping, bool isWeb, int turnsLeft) {
    return Positioned.fill(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(widget.tileSize * 0.14),
        child: Container(
          color: (isSleeping ? Colors.indigo : Colors.brown).withValues(alpha: 0.30),
          child: Center(
            child: Text(
              isSleeping ? 'z z z' : '🕸️',
              style: TextStyle(
                fontSize: isSleeping ? widget.tileSize * 0.18 : widget.tileSize * 0.36,
                color: Colors.white,
                shadows: const [Shadow(blurRadius: 4)],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class EmptyTileWidget extends StatelessWidget {
  const EmptyTileWidget({super.key, required this.tileSize});

  final double tileSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: tileSize,
      height: tileSize,
      decoration: BoxDecoration(
        color: const Color(0xFFE8C99A),
        borderRadius: BorderRadius.circular(tileSize * 0.14),
      ),
    );
  }
}
