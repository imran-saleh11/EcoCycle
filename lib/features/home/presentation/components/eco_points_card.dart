import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';
import 'package:lucide_icons/lucide_icons.dart';

class EcoPointsCard extends StatelessWidget {
  const EcoPointsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.cardBg,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/leaf_icon.png",
                        color: AppColors.primaryGreen,
                        scale: 18,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        '12,405',
                        style: Theme.of(
                          context,
                        ).textTheme.headlineMedium?.copyWith(fontSize: 24),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Global Rank',
                        style: TextStyle(
                          color: AppColors.textSecondary,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.cardBg,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        LucideIcons.badgeCheck,
                        color: AppColors.primaryGreen,
                        size: 24,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'SILVER',
                        style: Theme.of(
                          context,
                        ).textTheme.headlineMedium?.copyWith(fontSize: 24),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Tier Status',
                        style: TextStyle(
                          color: AppColors.textSecondary,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
