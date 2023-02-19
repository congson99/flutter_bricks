import 'package:_file/src/presentations/demo_page.dart';
import 'package:flutter/material.dart';

class FilePackageDescription {
  final String version = "1.0.0";
  final String name = "File";
  final Widget demoPage = const FilePackageDemoPage();
  final String description = "Provides some functionality with files."
      "\n\n"
      "Includes: pick, display card with icon, get match icon."
      "\n\n"
      "Dependencies:";
}
