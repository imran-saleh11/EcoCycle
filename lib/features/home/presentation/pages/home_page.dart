import 'package:ecocycle/core/common/appbar.dart';
import 'package:ecocycle/core/common/bottom_navigation_bar.dart';
import 'package:ecocycle/features/home/presentation/components/achievement_card.dart';
import 'package:ecocycle/features/home/presentation/components/eco_points_card.dart';
import 'package:flutter/material.dart';
import 'package:ecocycle/core/theme/app_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 36, height: 1.1),
                children: const [
                  TextSpan(text: 'Your Impact,\n'),
                  TextSpan(text: 'Curated.', style: TextStyle(color: AppColors.primaryGreen)),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "You've diverted 0kg of waste from\nlandfills this week. Explore your\ncontribution to the botanical circle.",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 15, height: 1.5),
            ),

            const SizedBox(height: 32),
            AchievementCard(),

            const SizedBox(height: 16),
            EcoPointsCard(),

            const SizedBox(height: 32),
            Text(
              'Recent Flora',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            _buildListItem(
              title: 'Organic Waste',
              subtitle: 'Citrus peels • 2 hours ago',
              iconData: Icons.apple,
              color: Colors.orange.withOpacity(0.2),
            ),
            const SizedBox(height: 12),
            _buildListItem(
              title: 'Recyclable',
              subtitle: 'Glass bottles • Yesterday',
              iconData: Icons.wine_bar,
              color: Colors.brown.withOpacity(0.2),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  Widget _buildMiniIconBox(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: AppColors.primaryGreen.withOpacity(0.2),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: AppColors.primaryGreen, size: 16),
    );
  }

  Widget _buildListItem({
    required String title,
    required String subtitle,
    required IconData iconData,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.cardBg,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Icon(iconData, color: Colors.white70),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15)),
              const SizedBox(height: 4),
              Text(subtitle, style: const TextStyle(color: AppColors.textSecondary, fontSize: 12)),
            ],
          )
        ],
      ),
    );
  }
}
