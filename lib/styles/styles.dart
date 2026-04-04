import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._(); // Private constructor to prevent instantiation

  static const String _fontFamily = 'Rovoto';

  // 30px - Large Page Headers
  static const TextStyle display30 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 30,
    fontWeight: FontWeight.bold,
    height: 1.2, // 36px line height
    letterSpacing: -0.5,
  );

  // 24px - Section Headers
  static const TextStyle headline24 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.3,
  );

  // 20px - App Bar Titles / Card Titles
  static const TextStyle title20 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  // 18px - Sub-headers / Bold List Items
  static const TextStyle title18 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );

  // 16px - Main Body Text (Your Anchor)
  static const TextStyle body16 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.normal,
    height: 1.5, // Standard readability height
  );

  // 14px - Secondary Text / Captions
  static const TextStyle caption14 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
}

class AppStyles {}
