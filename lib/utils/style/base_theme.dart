import 'package:flutter/material.dart';

import 'base_color.dart';

ThemeData baseTheme() {
  final ThemeData base = ThemeData(
    primaryColor: BaseColor.green600,
    scaffoldBackgroundColor: Colors.white,
  );
  return base;
}
