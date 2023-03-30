import 'package:flutter/material.dart';

class BaseTextStyle {
  static TextStyle heading({Color? color, double? fontSize}) {
    return TextStyle(
        fontSize: fontSize ?? 32,
        fontWeight: FontWeight.w600,
        color: color ?? Colors.black);
  }

  static TextStyle subtitle1({Color? color}) {
    return TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: color ?? Colors.black);
  }

  static TextStyle subtitle2({Color? color}) {
    return TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: color ?? Colors.black);
  }

  static TextStyle label({Color? color}) {
    return TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: color ?? Colors.black);
  }

  static TextStyle body({Color? color}) {
    return TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: color ?? Colors.black);
  }

  static TextStyle caption({Color? color, double? fontSize}) {
    return TextStyle(fontSize: 12, color: color ?? Colors.black);
  }

  static TextStyle button(){
    return const TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w500);
  }
}
