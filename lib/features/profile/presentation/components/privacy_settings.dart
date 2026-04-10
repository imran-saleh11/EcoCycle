import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';

class PrivacySettings extends StatelessWidget {
  const PrivacySettings({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.cardBg,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          _buildToggleRow(
            title: 'Public Profile',
            subtitle: 'Allow others to see your environmental impact stats.',
            value: true,
            onChanged: (v) {},
          ),
          const SizedBox(height: 16),
          const Divider(color: AppColors.border, height: 1),
          const SizedBox(height: 16),
          _buildToggleRow(
            title: 'Show in Leaderboard',
            subtitle: 'Feature your rank in the global community board.',
            value: false,
            onChanged: (v) {},
          ),
        ],
      ),
    );
  }
}

Widget _buildToggleRow({required String title, required String subtitle, required bool value, required Function(bool) onChanged}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600)),
            const SizedBox(height: 4),
            Text(subtitle, style: const TextStyle(color: AppColors.textSecondary, fontSize: 12)),
          ],
        ),
      ),
      const SizedBox(width: 16),
      Switch(
        value: value,
        onChanged: onChanged,
        activeThumbColor: AppColors.primaryGreen,
        activeTrackColor: AppColors.darkGreen,
        inactiveThumbColor: Colors.white,
        inactiveTrackColor: const Color(0xFF333333),
      ),
    ],
  );
}
