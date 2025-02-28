import 'package:flutter/material.dart';
import 'package:quickr/core/assets/app_font_style.dart';
import 'package:quickr/core/theme/app_colors.dart';

class AppTheme {
  AppTheme._();

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    textTheme: AppTextStyle.textTheme,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.surfaceLight,
      titleTextStyle: AppTextStyle.headline,
      iconTheme: const IconThemeData(color: AppColors.textPrimaryLight),
    ),
    cardColor: AppColors.surfaceLight,
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    textTheme: AppTextStyle.textTheme,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.surfaceDark,
      titleTextStyle: AppTextStyle.headline,
      iconTheme: const IconThemeData(color: AppColors.textPrimaryDark),
    ),
    cardColor: AppColors.surfaceDark,
  );
}
