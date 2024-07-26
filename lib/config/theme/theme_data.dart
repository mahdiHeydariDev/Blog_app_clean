import 'package:blog_app_clean/config/theme/pallet_color.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  static OutlineInputBorder border({Color color = PalletColor.borderColor}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: color,
        width: 3,
      ),
    );
  }

  static ThemeData themeData = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: PalletColor.scafFoldBackGround,
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(27),
        border: border(),
        enabledBorder: border(),
        focusedBorder: border(color: PalletColor.gradiant2),
        errorBorder: border(color: PalletColor.errorColor),
        iconColor: PalletColor.gradiant2,
        prefixIconColor: PalletColor.gradiant2,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: PalletColor.scafFoldBackGround,
        elevation: 0,
      ));
}
