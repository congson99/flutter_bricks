import 'package:flutter/material.dart';

import 'base_color.dart';

class BaseTextStyle {
  static TextStyle heading1({Color? color, double? fontSize}) {
    return TextStyle(
        fontSize: fontSize ?? 32, color: color ?? BaseColor.grey900);
  }

  static TextStyle heading2({Color? color, double? fontSize}) {
    return TextStyle(
        fontSize: fontSize ?? 24, color: color ?? BaseColor.grey900);
  }

  static TextStyle subtitle1({Color? color}) {
    return TextStyle(fontSize: 20, color: color ?? BaseColor.grey900);
  }

  static TextStyle subtitle2({Color? color}) {
    return TextStyle(fontSize: 18, color: color ?? BaseColor.grey900);
  }

  static TextStyle label({Color? color}) {
    return TextStyle(fontSize: 16, color: color ?? BaseColor.grey900);
  }

  static TextStyle body1({Color? color}) {
    return TextStyle(fontSize: 16, color: color ?? BaseColor.grey900);
  }

  static TextStyle body2({Color? color}) {
    return TextStyle(fontSize: 14, color: color ?? BaseColor.grey900);
  }

  static TextStyle caption({Color? color, double? fontSize}) {
    return TextStyle(fontSize: 12, color: color ?? BaseColor.grey900);
  }
}
