import 'package:flutter/material.dart';

class AppTextStyle {
  AppTextStyle._();

  static const TextStyle headline = TextStyle(
    fontFamily: 'Ageopersonaluse',
    fontSize: 28,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle subheading = TextStyle(
    fontFamily: 'Ageopersonaluse',
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle body = TextStyle(
    fontFamily: 'Ageopersonaluse',
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle button = TextStyle(
    fontFamily: 'Ageopersonaluse',
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle caption = TextStyle(
    fontFamily: 'Ageopersonaluse',
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );

  static TextTheme textTheme = const TextTheme(
    headlineLarge: headline,
    headlineMedium: subheading,
    bodyLarge: body,
    labelLarge: button,
    bodySmall: caption,
  );
}
