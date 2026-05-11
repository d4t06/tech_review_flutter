import 'package:flutter/material.dart';

class Styles {
  static const String _fontFamily = 'GoogleSans';

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );
}

extension TailwindTypography on TextStyle {
  TextStyle get extraBold => copyWith(fontWeight: FontWeight.w800);
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);
  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);

  TextStyle get textXs => copyWith(fontSize: 12, height: 1.333);
  TextStyle get textSm => copyWith(fontSize: 14, height: 1.428);
  TextStyle get textBase => copyWith(fontSize: 16, height: 1.5);
  TextStyle get textLg => copyWith(fontSize: 18, height: 1.555);
  TextStyle get textXl => copyWith(fontSize: 20, height: 1.4);
  TextStyle get text2xl => copyWith(fontSize: 24, height: 1.333);
  TextStyle get text3xl => copyWith(fontSize: 30, height: 1.2);
  TextStyle get text4xl => copyWith(fontSize: 36, height: 1.111);
}

extension ThemeContext on BuildContext {
  // Shortcut to the full theme
  ThemeData get theme => Theme.of(this);

  // Shortcut to the color scheme
  ColorScheme get colorScheme => theme.colorScheme;

  // ACCESSOR: This lets you start the chain from context
  // We use bodyMedium as the base starting point for our Tailwind sizes
  TextStyle get textXs => theme.textTheme.bodyMedium!.textXs;
  TextStyle get textSm => theme.textTheme.bodyMedium!.textSm;
  TextStyle get textBase => theme.textTheme.bodyMedium!.textBase;
  TextStyle get textLg => theme.textTheme.bodyMedium!.textLg;
  TextStyle get textXl => theme.textTheme.bodyMedium!.textXl;
  TextStyle get text2xl => theme.textTheme.bodyMedium!.text2xl;
  TextStyle get text3xl => theme.textTheme.bodyMedium!.text3xl;
  TextStyle get text4xl => theme.textTheme.bodyMedium!.text4xl;
}
