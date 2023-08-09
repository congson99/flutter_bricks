import 'package:flutter/cupertino.dart';

// ignore: constant_identifier_names
enum BrickType { Widget, Animation }

abstract class BrickModel {
  BrickModel({
    required this.name,
    required this.iconPath,
    this.demoPage,
    this.type,
  });

  final String name;
  final String iconPath;
  final Widget? demoPage;
  final BrickType? type;
}
