import 'package:blog_app_clean/config/theme/theme_data.dart';
import 'package:blog_app_clean/core/constaints/url_constants.dart';
import 'package:blog_app_clean/features/auth/presentation/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ignore: unused_local_variable
  final Supabase supabase = await Supabase.initialize(
    url: UrlConstants.baseUrl,
    anonKey: UrlConstants.apiKey,
  );
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
      home: const SigninScreen(),
    );
  }
}
