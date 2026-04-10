import 'package:ecocycle/features/profile/presentation/components/impact_main_card.dart';
import 'package:ecocycle/features/profile/presentation/components/privacy_settings.dart';
import 'package:flutter/material.dart';
import 'package:ecocycle/core/theme/app_theme.dart';
import 'package:ecocycle/features/profile/presentation/components/profile_card.dart';

import '../components/following.dart';
import '../components/stats.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),

              ProfileCard(userName: "John Doe"),
              const SizedBox(height: 24),

              ImpactMainCard(),
              const SizedBox(height: 16),

              Stats(),
              const SizedBox(height: 32),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Following',
                    style: Theme
                        .of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'See All',
                    style: TextStyle(color: AppColors.primaryGreen,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const SizedBox(height: 16),

              Following(name: 'Elena Rostova',
                points: '8.2k Points',
                rank: '#128',
                imageUrl: 'https://i.pravatar.cc/100?img=5'),
              const SizedBox(height: 12),
              Following(name: 'Marcus Thorne',
                points: '15.1k Points',
                rank: '#12',
                imageUrl: 'https://i.pravatar.cc/100?img=68'),
              const SizedBox(height: 12),
              Following(name: 'Sarah Jenkins',
                points: '4.3k Points',
                rank: '#842',
                imageUrl: 'https://i.pravatar.cc/100?img=47'),

              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Privacy & Visibility',
                    style: Theme
                        .of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              PrivacySettings(),

              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: AppColors.redError,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14)),
                  child: const Text('Sign Out', style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: AppColors.textMain)),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}