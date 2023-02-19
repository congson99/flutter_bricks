import 'package:flutter/material.dart';

import 'base_color.dart';

class BaseTextStyle {
  static TextStyle heading({Color? color, double? fontSize}) {
    return TextStyle(
        fontSize: fontSize ?? 32,
        fontWeight: FontWeight.w600,
        color: color ?? BaseColor.grey900);
  }

  static TextStyle subtitle1({Color? color}) {
    return TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: color ?? BaseColor.grey900);
  }

  static TextStyle subtitle2({Color? color}) {
    return TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: color ?? BaseColor.grey900);
  }

  static TextStyle label({Color? color}) {
    return TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: color ?? BaseColor.grey900);
  }

  static TextStyle body({Color? color}) {
    return TextStyle(fontSize: 14, color: color ?? BaseColor.grey900);
  }

  static TextStyle caption({Color? color, double? fontSize}) {
    return TextStyle(fontSize: 12, color: color ?? BaseColor.grey900);
  }
}
