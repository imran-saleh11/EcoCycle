import 'package:ecocycle/features/auth/presentation/pages/login_screen.dart';
import 'package:ecocycle/features/auth/presentation/pages/register_screen.dart';
import 'package:ecocycle/features/dispute_resolution/presentation/pages/dispute_resolution_page.dart';
import 'package:ecocycle/features/home/presentation/pages/home_page.dart';
import 'package:ecocycle/features/profile/presentation/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EcoCycle',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: RegisterScreen(),
    );
  }
}
