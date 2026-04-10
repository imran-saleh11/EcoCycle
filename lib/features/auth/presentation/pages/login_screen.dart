import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 32, right: 32, top: 120),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Let\'s',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Text(
                      ' Sign In.',
                      style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: AppColors.primaryGreen),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                Text(
                  'Welcome back\nYou\'ve been missed!',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: AppColors.textSecondary),
                ),
                SizedBox(height: 56),
                Text(
                  " Email",
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                  decoration: BoxDecoration(
                    color: AppColors.cardBg,
                    borderRadius: BorderRadius.circular(12),
                    border: BoxBorder.all(color: AppColors.border),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 22),
                Text(
                  " Password",
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                  decoration: BoxDecoration(
                    color: AppColors.cardBg,
                    borderRadius: BorderRadius.circular(12),
                    border: BoxBorder.all(color: AppColors.border),
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 210),
                SizedBox(
                  width: 500,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryGreen,
                      foregroundColor: AppColors.textMain,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'LOG IN',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.textMain, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 6),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?  ",
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Sign Up",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.textMain, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
