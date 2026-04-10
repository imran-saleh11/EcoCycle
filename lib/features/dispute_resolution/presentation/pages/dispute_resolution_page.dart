import 'package:ecocycle/core/common/appbar.dart';
import 'package:flutter/material.dart';
import 'package:ecocycle/core/theme/app_theme.dart';
import '../../../../core/common/bottom_navigation_bar.dart';

// TODO: move to listview builder for the dispute cards
class DisputeResolutionPage extends StatelessWidget {
  const DisputeResolutionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Text(
              'Dispute Queue',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 32),
            ),
            const SizedBox(height: 12),
            Text(
              'Review community-flagged classifications. Resolve discrepancies between AI detection and human insight.',
              style: TextStyle(color: AppColors.textSecondary, fontSize: 13, height: 1.5),
            ),
            const SizedBox(height: 32),

            // Tags List
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildTag('All Items', isSelected: true),
                  const SizedBox(width: 10),
                  _buildTag('Plastic'),
                  const SizedBox(width: 10),
                  _buildTag('Organic'),
                  const SizedBox(width: 10),
                  _buildTag('Glass'),
                ],
              ),
            ),
            const SizedBox(height: 24),
            //ListView.builder(),

            // Dispute Card 1
            _buildDisputeCard(
              context,
              imageUrl: 'https://images.unsplash.com/photo-1605600659908-0ef719419d41?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=80',
              priority: 'PRIORITY HIGH',
              priorityColor: AppColors.primaryGreen,
              title: 'Clear PET Bottle',
              time: '• Flagged 2h ago',
              status: 'Disputed',
              aiResultTitle: 'General Waste',
              aiResultSubtitle: '82% Confidence',
              altResultTitle: 'Recyclable\nPlastic',
              altResultSubtitle: 'User Verified',
              primaryAction: 'Confirm',
            ),
            const SizedBox(height: 24),

            // Dispute Card 2
            _buildDisputeCard(
              context,
              imageUrl: 'https://images.unsplash.com/photo-1532996122724-e3c354a0b15b?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=80',
              priority: 'NORMAL',
              priorityColor: AppColors.textSecondary,
              title: 'Mixed Bio-Waste',
              time: '• Flagged 5h ago',
              status: 'Disputed',
              aiResultTitle: 'Paper',
              aiResultSubtitle: '54% Confidence',
              altResultTitle: 'Organic/Compost',
              altResultSubtitle: 'User Verified',
              primaryAction: 'Confirm',
            ),
            const SizedBox(height: 24),

            // Dispute Card 3
            _buildDisputeCard(
              context,
              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2S24kn71SsxMh0SJoL-0e5ZHuNZDKoiwViA&s',
              priority: 'ESCALATED',
              priorityColor: AppColors.redError,
              title: 'Damaged Lithium\nBattery',
              titleSize: 20,
              time: '• Flagged 15m ago',
              status: 'Critical',
              statusLabel: 'HAZMAT RISK',
              statusColor: AppColors.redError,
              aiResultTitle: 'Scrap Metal',
              aiResultSubtitle: '41% Confidence',
              altResultTitle: 'E-Waste / Hazardous',
              altResultSubtitle: 'Multi-User Flag',
              primaryAction: 'Confirm',
              isCriticalAction: true,
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  Widget _buildTag(String text, {bool isSelected = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.darkGreen : AppColors.cardBg,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.white : AppColors.textSecondary,
          fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
        ),
      ),
    );
  }

  Widget _buildDisputeCard(
      BuildContext context, {
        required String imageUrl,
        required String priority,
        required Color priorityColor,
        required String title,
        double titleSize = 22,
        required String time,
        required String status,
        String statusLabel = 'CURRENT STATUS',
        Color statusColor = Colors.orangeAccent,
        required String aiResultTitle,
        required String aiResultSubtitle,
        required String altResultTitle,
        required String altResultSubtitle,
        required String primaryAction,
        bool isCriticalAction = false,
      }) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: const Color(0xFF161616),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.border.withOpacity(0.5)),
      ),
      child: Column(
        children: [
          // Image header
          Container(
            height: 160,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  priority,
                  style: TextStyle(color: priorityColor, fontSize: 9, fontWeight: FontWeight.bold, letterSpacing: 1.0),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: titleSize, height: 1.2),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            time,
                            style: TextStyle(color: AppColors.textSecondary, fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          statusLabel,
                          style: TextStyle(color: AppColors.textSecondary, fontSize: 8, fontWeight: FontWeight.bold, letterSpacing: 0.5),
                        ),
                        Text(
                          status,
                          style: TextStyle(color: statusColor, fontSize: 14, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // Details boxes
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: AppColors.cardBg,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('AI RESULT', style: TextStyle(color: AppColors.textSecondary, fontSize: 9, fontWeight: FontWeight.bold, letterSpacing: 1.0)),
                            const SizedBox(height: 8),
                            Text(aiResultTitle, style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold, height: 1.2)),
                            const SizedBox(height: 8),
                            Text(aiResultSubtitle, style: TextStyle(color: AppColors.textSecondary, fontSize: 11)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: const Color(0xFF10241A), // Dark greenish background
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('ALT CLASSIFICATION', style: TextStyle(color: AppColors.primaryGreen, fontSize: 9, fontWeight: FontWeight.bold, letterSpacing: 1.0)),
                            const SizedBox(height: 8),
                            Text(altResultTitle, style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold, height: 1.2)),
                            const SizedBox(height: 8),
                            Text(altResultSubtitle, style: const TextStyle(color: AppColors.primaryGreen, fontSize: 11)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // Actions
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.darkGreen,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                          ),
                          child: Text(primaryAction, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: 50,
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.transparent),
                            backgroundColor: AppColors.cardBg,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                          ),
                          child: Text('Reject', textAlign: TextAlign.center, style: const TextStyle(color: AppColors.textMain)),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 50,
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.transparent),
                            backgroundColor: isCriticalAction ? Colors.redAccent.withOpacity(0.1) : AppColors.cardBg,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                          ),
                          child: Icon(isCriticalAction ? Icons.warning_amber_rounded : Icons.flag_outlined, color: isCriticalAction ? AppColors.redError : AppColors.textSecondary),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
