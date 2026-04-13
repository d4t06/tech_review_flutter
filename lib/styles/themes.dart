import 'package:tech_review/styles/colors.dart';
import 'package:tech_review/styles/styles.dart';
import 'package:flutter/material.dart';

class AppThemes {
  AppThemes._();

  static final _textTheme = TextTheme(bodyMedium: AppTextStyles.bodyMedium);

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      primaryColor: AppColors.primary,
      colorScheme: ColorScheme.light(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
      ),
      textTheme: _textTheme,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      primaryColor: AppColors.primary,
      colorScheme: ColorScheme.dark(onSurface: AppColors.secondary),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primary,
        elevation: 0,
      ),
      textTheme: _textTheme,
    );
  }
}

// ThemeData get lightTheme {
//   return ThemeData(
//     primaryColor: MyColors.primary,
//     colorScheme: ColorScheme.fromSeed(seedColor: MyColors.primary),
//   );
// }
