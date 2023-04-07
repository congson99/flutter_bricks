import 'package:flutter/cupertino.dart';

abstract class Brick {
  Brick({
    required this.id,
    required this.version,
    required this.name,
    required this.iconPath,
    this.demoPage,
    required this.description,
  });

  final String id;
  final String version;
  final String name;
  final String iconPath;
  final Widget? demoPage;
  final String description;
}
