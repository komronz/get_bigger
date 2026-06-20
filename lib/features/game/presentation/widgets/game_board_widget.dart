// lib/features/game/presentation/widgets/game_board_widget.dart

import 'package:flutter/material.dart';
import '../../../../core/constants/app_constants.dart';
import '../../domain/entities/game_board_entity.dart';
import '../bloc/game_state.dart';
import 'tile_widget.dart';

class GameBoardWidget extends StatelessWidget {
  const GameBoardWidget({
    super.key,
    required this.board,
    this.activePowerUp = ActivePowerUp.none,
    this.swapFirstRow,
    this.swapFirstCol,
    this.onTileTap,
  });

  final GameBoardEntity board;
  final ActivePowerUp activePowerUp;
  final int? swapFirstRow;
  final int? swapFirstCol;
  final void Function(int row, int col)? onTileTap;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        const padding = 12.0;
        const gap = 8.0;
        final boardSize = constraints.maxWidth;
        final tileSize =
            (boardSize - padding * 2 - gap * (AppConstants.gridSize - 1)) /
                AppConstants.gridSize;

        return Container(
          width: boardSize,
          height: boardSize,
          decoration: BoxDecoration(
            color: const Color(0xFFD4A574),
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Color(0x40000000),
                blurRadius: 20,
                offset: Offset(0, 8),
              ),
            ],
          ),
          padding: const EdgeInsets.all(padding),
          child: Stack(
            children: [
              _buildEmptyCells(tileSize, gap),
              _buildTiles(tileSize, gap),
            ],
          ),
        );
      },
    );
  }

  Widget _buildEmptyCells(double tileSize, double gap) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(AppConstants.gridSize, (r) {
        return Padding(
          padding: EdgeInsets.only(bottom: r < AppConstants.gridSize - 1 ? gap : 0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(AppConstants.gridSize, (c) {
              return Padding(
                padding: EdgeInsets.only(right: c < AppConstants.gridSize - 1 ? gap : 0),
                child: EmptyTileWidget(tileSize: tileSize),
              );
            }),
          ),
        );
      }),
    );
  }

  Widget _buildTiles(double tileSize, double gap) {
    final tiles = <Widget>[];
    final isPowerUpActive = activePowerUp != ActivePowerUp.none;

    for (int r = 0; r < AppConstants.gridSize; r++) {
      for (int c = 0; c < AppConstants.gridSize; c++) {
        final tile = board.grid[r][c];
        if (tile == null) continue;

        final top = r * (tileSize + gap);
        final left = c * (tileSize + gap);
        final isSelected = swapFirstRow == r && swapFirstCol == c;

        tiles.add(
          AnimatedPositioned(
            key: ValueKey(tile.id),
            duration: AppConstants.tileMoveDuration,
            curve: Curves.easeInOut,
            top: top,
            left: left,
            child: TileWidget(
              tile: tile,
              tileSize: tileSize,
              isSelected: isSelected,
              onTap: isPowerUpActive && onTileTap != null
                  ? () => onTileTap!(r, c)
                  : null,
            ),
          ),
        );
      }
    }
    return Stack(children: tiles);
  }
}
