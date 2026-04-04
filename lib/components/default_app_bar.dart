import 'package:flutter/material.dart';

class DefaultAppBar extends AppBar {
  @override
  final Widget title =
      Text("Tech Preview".toUpperCase());

  @override
  final bool centerTitle = true;

  @override
  final double elevation = 0.5;
}
