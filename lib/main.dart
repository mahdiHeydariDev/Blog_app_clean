import 'package:blog_app_clean/config/theme/theme_data.dart';
import 'package:blog_app_clean/features/auth/presentation/screens/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.themeData,
      home: const SignupScreen(),
    );
  }
}
