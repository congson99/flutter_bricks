import 'package:flutter/cupertino.dart';

abstract class LocalPackage {
  LocalPackage(this.id, this.version, this.name, this.iconPath, this.demoPage,
      this.description);

  final String id;
  final String version;
  final String name;
  final String iconPath;
  final Widget demoPage;
  final String description;
}
