import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';

class ImpactMainCard extends StatelessWidget {
  const ImpactMainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFF161616),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.border.withOpacity(0.5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('CURRENT IMPACT', style: TextStyle(color: AppColors.primaryGreen, fontSize: 10, fontWeight: FontWeight.bold, letterSpacing: 1.2)),
          const SizedBox(height: 12),
          Text(
            '12,450',         // TODO: Add real data
            style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: 48, height: 1.0),
          ),
          const Text(
            'Points Earned',
            style: TextStyle(color: AppColors.textSecondary, fontSize: 14),
          )
        ],
      ),
    );
  }
}
