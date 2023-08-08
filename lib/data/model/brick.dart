import 'package:flutter/cupertino.dart';

abstract class Brick {
  Brick({
    required this.name,
    required this.iconPath,
    this.demoPage,
  });

  final String name;
  final String iconPath;
  final Widget? demoPage;
}
