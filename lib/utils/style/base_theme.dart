import 'package:bricks/utils/helper/color_helper.dart';
import 'package:flutter/material.dart';

ThemeData baseTheme() {
  final ThemeData base = ThemeData(
      primaryColor: Colors.black,
      scaffoldBackgroundColor: Colors.white,
      primarySwatch: ColorHelper.createMaterialColor(Colors.white));
  return base;
}
