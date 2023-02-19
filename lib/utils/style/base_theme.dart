import 'package:bricks/utils/helper/color_helper.dart';
import 'package:flutter/material.dart';

import 'base_color.dart';

ThemeData baseTheme() {
  final ThemeData base = ThemeData(
      primaryColor: BaseColor.green600,
      scaffoldBackgroundColor: Colors.white,
      primarySwatch: ColorHelper.createMaterialColor(Colors.white));
  return base;
}
