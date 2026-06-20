// lib/features/collection/presentation/pages/collection_page.dart

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/animal_constants.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_colors.dart';
import '../bloc/collection_bloc.dart';
import '../bloc/collection_event.dart';
import '../bloc/collection_state.dart';
import '../widgets/animal_card_widget.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<CollectionBloc>()..add(const CollectionEvent.loaded()),
      child: const _CollectionView(),
    );
  }
}

class _CollectionView extends StatelessWidget {
  const _CollectionView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Text(
          'collection.title'.tr(),
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w900,
            color: Color(0xFF3D2B1F),
          ),
        ),
        backgroundColor: AppColors.background,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF3D2B1F)),
      ),
      body: BlocBuilder<CollectionBloc, CollectionState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const SizedBox.shrink(),
            loading: (_) => const Center(
              child: CircularProgressIndicator(color: AppColors.accent),
            ),
            loaded: (s) => _buildGrid(context, s.entries),
            error: (e) => Center(child: Text(e.message)),
          );
        },
      ),
    );
  }

  Widget _buildGrid(BuildContext context, List entries) {
    final unlockedCount = entries.where((e) {
      // Access isUnlocked from the entity
      return (e as dynamic).isUnlocked == true;
    }).length;

    return Column(
      children: [
        _buildProgressHeader(context, unlockedCount, kAnimals.length),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.85,
            ),
            itemCount: entries.length,
            itemBuilder: (context, index) {
              final entry = entries[index] as dynamic;
              return AnimalCardWidget(
                level: entry.level as int,
                isUnlocked: entry.isUnlocked as bool,
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildProgressHeader(
      BuildContext context, int unlocked, int total) {
    final progress = unlocked / total;
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'collection.discovered'.tr(),
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF3D2B1F),
                ),
              ),
              Text(
                '$unlocked / $total',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: AppColors.accent,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              value: progress,
              backgroundColor: const Color(0xFFE0D5C8),
              valueColor:
                  const AlwaysStoppedAnimation<Color>(AppColors.accent),
              minHeight: 10,
            ),
          ),
        ],
      ),
    );
  }
}
