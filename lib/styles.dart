import 'package:flutter/material.dart';

class Styles {
  static const _textSizeLarge = 22.0;
  static const _textSizeDefault = 16.0;
  static const _textSizeSmall = 12.0;

  static final Color _textColorDefault = _hexToColor('000000');

  static final Color _subTextColorDefault = _hexToColor('808080');

  static final String _fontNameDefault = 'GoogleSans';

  static final textDefault = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeDefault,
    height: 1.2,
  );

  static final subText = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeDefault,
    color: _subTextColorDefault,
    height: 1.2,
  );

  static final headerLarge = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeLarge,
    fontWeight: FontWeight.w500,
  );

  static Color _hexToColor(String code) {
    return Color(int.parse(code.substring(0, 6), radix: 16) + 0xFF000000);
  }
}
