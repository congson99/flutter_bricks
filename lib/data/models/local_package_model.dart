import 'package:flutter/cupertino.dart';

abstract class LocalPackage {
  LocalPackage(
      this.id, this.name, this.iconPath, this.demoPage, this.description);

  final String id;
  final String name;
  final String iconPath;
  final Widget demoPage;
  final String description;
}
