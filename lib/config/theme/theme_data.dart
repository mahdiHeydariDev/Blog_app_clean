import 'package:blog_app_clean/config/theme/pallet_color.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  static ThemeData themeData = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: PalletColor.scafFoldBackGround,
    inputDecorationTheme: const InputDecorationTheme(),
  );
}
