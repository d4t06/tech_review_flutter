import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._(); // Private constructor to prevent instantiation

  static const String _fontFamily = 'Roboto';

  // 16px - Main Body Text (Your Anchor)
  static const TextStyle bodyMedium = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.normal,
    height: 1.5,
  );
}

extension ThemeContext on BuildContext {
  // Shortcut to the full theme
  ThemeData get theme => Theme.of(this);

  // Shortcut to the color scheme
  ColorScheme get colorScheme => theme.colorScheme;
}
