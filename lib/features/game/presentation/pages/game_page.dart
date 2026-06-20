// lib/features/game/presentation/pages/game_page.dart

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/game_logic.dart';
import '../../../../core/widgets/app_button.dart';
import '../bloc/game_bloc.dart';
import '../bloc/game_event.dart';
import '../bloc/game_state.dart';
import '../widgets/discovery_card.dart';
import '../widgets/game_board_widget.dart';
import '../widgets/trap_info_sheet.dart';
import '../widgets/game_over_overlay.dart';
import '../widgets/power_up_bar_widget.dart';
import '../widgets/score_widget.dart';
import '../widgets/swipe_detector.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<GameBloc>()..add(const GameEvent.started()),
      child: const _GameView(),
    );
  }
}

class _GameView extends StatefulWidget {
  const _GameView();

  @override
  State<_GameView> createState() => _GameViewState();
}

class _GameViewState extends State<_GameView> {
  final FocusNode _focusNode = FocusNode();

  static final _keyMap = {
    LogicalKeyboardKey.arrowLeft: SwipeDirection.left,
    LogicalKeyboardKey.arrowRight: SwipeDirection.right,
    LogicalKeyboardKey.arrowUp: SwipeDirection.up,
    LogicalKeyboardKey.arrowDown: SwipeDirection.down,
    LogicalKeyboardKey.keyA: SwipeDirection.left,
    LogicalKeyboardKey.keyD: SwipeDirection.right,
    LogicalKeyboardKey.keyW: SwipeDirection.up,
    LogicalKeyboardKey.keyS: SwipeDirection.down,
  };

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  KeyEventResult _handleKey(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent) return KeyEventResult.ignored;
    final dir = _keyMap[event.logicalKey];
    if (dir == null) return KeyEventResult.ignored;
    _onSwipe(context, dir);
    return KeyEventResult.handled;
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: _focusNode,
      autofocus: true,
      onKeyEvent: _handleKey,
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: AppColors.background,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
        child: Scaffold(
          backgroundColor: AppColors.background,
          body: SafeArea(
            top: false,
            child: BlocConsumer<GameBloc, GameState>(
              listenWhen: (prev, curr) =>
                  prev.status != curr.status ||
                  prev.powerUpEarned != curr.powerUpEarned,
              listener: (context, state) {
                // Power-up earned notification.
                if (state.powerUpEarned != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        state.powerUpEarned!,
                        style: const TextStyle(fontWeight: FontWeight.w700),
                      ),
                      backgroundColor: const Color(0xFF5D4037),
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      duration: const Duration(seconds: 3),
                    ),
                  );
                  context.read<GameBloc>().add(const GameEvent.powerUpNotified());
                }
              },
              builder: (context, state) {
                return Stack(
                  children: [
                    Column(
                      children: [
                        _buildHeader(context, state),
                        Expanded(child: _buildGameArea(context, state)),
                      ],
                    ),
                    if (state.showingDiscovery &&
                        state.newlyDiscoveredLevel != null)
                      _buildDiscoveryOverlay(
                          context, state.newlyDiscoveredLevel!),
                    if (state.status == GameStatus.gameOver ||
                        (state.status == GameStatus.won &&
                            !state.continueAfterWin))
                      _buildEndOverlay(context, state),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, GameState state) {
    final topPad = MediaQuery.of(context).padding.top;
    return Container(
      padding: EdgeInsets.fromLTRB(16, topPad + 6, 16, 12),
      decoration: BoxDecoration(
        color: AppColors.background,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFD4A574).withValues(alpha: 0.25),
            blurRadius: 12,
            spreadRadius: -2,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              _HeaderIconButton(
                icon: Icons.arrow_back_ios_new_rounded,
                onTap: () => Navigator.of(context).pop(),
                tooltip: 'game.tooltip_back'.tr(),
              ),
              Expanded(
                child: Column(
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Animal Merge ',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFF3D2B1F),
                              letterSpacing: -0.5,
                            ),
                          ),
                          TextSpan(
                            text: '2048',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: AppColors.accent,
                              letterSpacing: -0.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'game.subtitle'.tr(),
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFAA8060),
                        height: 1.3,
                      ),
                    ),
                  ],
                ),
              ),
              _HeaderIconButton(
                icon: Icons.info_outline_rounded,
                onTap: () => TrapInfoSheet.show(context),
                tooltip: 'game.tooltip_info'.tr(),
              ),
              const SizedBox(width: 8),
              _HeaderIconButton(
                icon: Icons.refresh_rounded,
                onTap: () => _showResetConfirmation(context),
                tooltip: 'game.tooltip_new_game'.tr(),
              ),
            ],
          ),
          if (state.board != null) ...[
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: ScoreWidget(
                    score: state.board!.score,
                    label: 'game.score'.tr(),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ScoreWidget(
                    score: state.board!.bestScore,
                    label: 'game.best'.tr(),
                    backgroundColor: AppColors.bestScoreCard,
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildGameArea(BuildContext context, GameState state) {
    if (state.status == GameStatus.loading || state.board == null) {
      return const Center(
        child: CircularProgressIndicator(color: AppColors.accent),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(height: 4),
          _buildTargetHint(),
          const SizedBox(height: 12),
          // Power-up bar.
          PowerUpBarWidget(
            undoCount: state.undoCount,
            swapCount: state.swapCount,
            deleteCount: state.deleteCount,
            activePowerUp: state.activePowerUp,
            onUndo: () =>
                context.read<GameBloc>().add(const GameEvent.undoPressed()),
            onSwap: () =>
                context.read<GameBloc>().add(const GameEvent.swapActivated()),
            onDelete: () =>
                context.read<GameBloc>().add(const GameEvent.deleteActivated()),
            onCancel: () =>
                context.read<GameBloc>().add(const GameEvent.powerUpCancelled()),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: Center(
              child: AspectRatio(
                aspectRatio: 1,
                child: state.activePowerUp != ActivePowerUp.none
                    // In power-up mode: tap tiles directly (no swipe detector).
                    ? GameBoardWidget(
                        board: state.board!,
                        activePowerUp: state.activePowerUp,
                        swapFirstRow: state.swapFirstRow,
                        swapFirstCol: state.swapFirstCol,
                        onTileTap: (r, c) => context
                            .read<GameBloc>()
                            .add(GameEvent.tileSelected(row: r, col: c)),
                      )
                    : SwipeDetector(
                        onSwipe: (dir) => _onSwipe(context, dir),
                        child: GameBoardWidget(board: state.board!),
                      ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          _buildHintText(state.activePowerUp),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildTargetHint() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.7),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('game.goal'.tr(), style: const TextStyle(fontSize: 13, color: Color(0xFF7A5C44))),
          const Text('👑', style: TextStyle(fontSize: 16)),
          Text(
            ' ${'game.golden_dragon'.tr()}',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: Color(0xFF3D2B1F),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHintText(ActivePowerUp active) {
    final text = active == ActivePowerUp.none
        ? 'game.hint_swipe'.tr()
        : active == ActivePowerUp.swap
            ? 'game.hint_swap'.tr()
            : 'game.hint_delete'.tr();
    return Text(
      text,
      style: const TextStyle(
        fontSize: 13,
        color: Color(0xFF7A5C44),
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildDiscoveryOverlay(BuildContext context, int level) {
    return Positioned.fill(
      child: Container(
        color: Colors.black.withValues(alpha: 0.6),
        child: Center(
          child: DiscoveryCard(
            level: level,
            onDismiss: () =>
                context.read<GameBloc>().add(const GameEvent.discoveryDismissed()),
          ),
        ),
      ),
    );
  }

  Widget _buildEndOverlay(BuildContext context, GameState state) {
    final isWon = state.status == GameStatus.won;
    return Positioned.fill(
      child: Container(
        color: Colors.black.withValues(alpha: 0.55),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GameOverOverlay(
              score: state.board?.score ?? 0,
              bestScore: state.board?.bestScore ?? 0,
              isWon: isWon,
              onRestart: () =>
                  context.read<GameBloc>().add(const GameEvent.reset()),
            ),
            if (isWon) ...[
              const SizedBox(height: 16),
              AppButton(
                label: 'game.keep_playing'.tr(),
                onTap: () => context
                    .read<GameBloc>()
                    .add(const GameEvent.continueAfterWin()),
                colors: const [Color(0xFF546E7A), Color(0xFF37474F)],
              ),
            ],
          ],
        ),
      ),
    );
  }

  void _onSwipe(BuildContext context, SwipeDirection dir) {
    context.read<GameBloc>().add(GameEvent.swiped(direction: dir));
  }

  void _showResetConfirmation(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (dialogCtx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text(
          'game.new_game_dialog.title'.tr(),
          style: const TextStyle(fontWeight: FontWeight.w800),
        ),
        content: Text('game.new_game_dialog.content'.tr()),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogCtx).pop(),
            child: Text('game.new_game_dialog.cancel'.tr()),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.accent,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              Navigator.of(dialogCtx).pop();
              context.read<GameBloc>().add(const GameEvent.reset());
            },
            child: Text('game.new_game_dialog.confirm'.tr(),
                style: const TextStyle(fontWeight: FontWeight.w700)),
          ),
        ],
      ),
    );
  }
}

class _HeaderIconButton extends StatelessWidget {
  const _HeaderIconButton({
    required this.icon,
    required this.onTap,
    this.tooltip,
  });

  final IconData icon;
  final VoidCallback onTap;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip ?? '',
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: AppColors.scoreCard.withValues(alpha: 0.9),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.12),
                blurRadius: 6,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Icon(icon, color: Colors.white, size: 18),
        ),
      ),
    );
  }
}
