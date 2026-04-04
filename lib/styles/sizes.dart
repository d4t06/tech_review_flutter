import 'package:flutter/cupertino.dart';

class AppGap {
  AppGap._();
  // Vertical Gaps
  static const h4 = SizedBox(height: 4);
  static const h8 = SizedBox(height: 8);
  static const h12 = SizedBox(height: 12);
  static const h16 = SizedBox(height: 16);
  static const h24 = SizedBox(height: 24);
  static const h32 = SizedBox(height: 32);
  static const h40 = SizedBox(height: 40);

  // Horizontal Gaps
  static const w4 = SizedBox(width: 4);
  static const w8 = SizedBox(width: 8);
  static const w12 = SizedBox(width: 12);
  static const w16 = SizedBox(width: 16);
}

class AppPadding {
  AppPadding._();

  // Vertical Paddings
  static const v4 = EdgeInsets.symmetric(vertical: 4);
  static const v8 = EdgeInsets.symmetric(vertical: 8);
  static const v16 = EdgeInsets.symmetric(vertical: 16);
  static const v24 = EdgeInsets.symmetric(vertical: 24);

  // Horizontal Paddings
  static const h4 = EdgeInsets.symmetric(horizontal: 4);
  static const h8 = EdgeInsets.symmetric(horizontal: 8);
  static const h16 = EdgeInsets.symmetric(horizontal: 16);

  // All
  static const all8 = EdgeInsets.all(8);
  static const all16 = EdgeInsets.all(16);
  static const all24 = EdgeInsets.all(24);

}

class AppRound {
  AppRound._();

  static const r4 = BorderRadius.all(Radius.circular(4));
  static const r8 = BorderRadius.all(Radius.circular(8));
  static const r16 = BorderRadius.all(Radius.circular(16));
  static const r26 = BorderRadius.all(Radius.circular(26));
}