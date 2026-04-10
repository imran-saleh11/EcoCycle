import 'package:ecocycle/features/dispute_resolution/presentation/pages/dispute_resolution_page.dart';
import 'package:ecocycle/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../theme/app_theme.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomePage(),
    const DisputeResolutionPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: AppColors.background,
          border: Border(
            top: BorderSide(
              color: Colors.white10,
              width: 0.5
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
              borderRadius: BorderRadius.circular(18),
              child: Container(
                padding: const EdgeInsets.all(13),
                decoration: BoxDecoration(
                  color: _selectedIndex == 0
                      ? AppColors.darkGreen
                      : AppColors.background,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Icon(
                  LucideIcons.home,
                  color: _selectedIndex == 0
                      ? AppColors.textMain
                      : AppColors.textSecondary,
                  size: 30,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
              borderRadius: BorderRadius.circular(18),
              child: Container(
                padding: const EdgeInsets.all(13),
                decoration: BoxDecoration(
                  color: _selectedIndex == 1
                      ? AppColors.darkGreen
                      : AppColors.background,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Icon(
                  LucideIcons.scanLine,
                  color: _selectedIndex == 1
                      ? AppColors.textMain
                      : AppColors.textSecondary,
                  size: 32,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
              borderRadius: BorderRadius.circular(18),
              child: Container(
                padding: const EdgeInsets.all(13),
                decoration: BoxDecoration(
                  color: _selectedIndex == 2
                      ? AppColors.darkGreen
                      : AppColors.background,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Icon(
                  LucideIcons.barChart2,
                  color: _selectedIndex == 2
                      ? AppColors.textMain
                      : AppColors.textSecondary,
                  size: 30,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = 3;
                });
              },
              borderRadius: BorderRadius.circular(18),
              child: Container(
                padding: const EdgeInsets.all(13),
                decoration: BoxDecoration(
                  color: _selectedIndex == 3
                      ? AppColors.darkGreen
                      : AppColors.background,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Icon(
                  LucideIcons.user,
                  color: _selectedIndex == 3
                      ? AppColors.textMain
                      : AppColors.textSecondary,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
