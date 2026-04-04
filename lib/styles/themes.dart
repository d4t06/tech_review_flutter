import 'package:tech_review/styles/colors.dart';
import 'package:tech_review/styles/styles.dart';
import 'package:flutter/material.dart';

class AppThemes {
  AppThemes._();

  static final _textTheme = TextTheme(
    displayLarge: AppTextStyles.display30,
    headlineMedium: AppTextStyles.headline24,
    titleLarge: AppTextStyles.title20,
    titleMedium: AppTextStyles.title18,
    bodyLarge: AppTextStyles.body16,
    bodyMedium: AppTextStyles.caption14,
  );

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      primaryColor: AppColors.primary,
      colorScheme: ColorScheme.light(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
      ),
      // appBarTheme: const AppBarTheme(
      //   backgroundColor: AppColors.primary,
      //   elevation: 0,
      // ),
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
