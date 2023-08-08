import 'package:_file/src/demo_page.dart';
import 'package:flutter/material.dart';

class FilePackageDescription {
  final String version = "1.0.0";
  final String name = "File";
  final Widget demoPage = const FilePackageDemoPage();
  final String description = "Provides some functionality with files."
      "\n\n"
      "Includes: pick file, open file, display file card with icon, get match icon."
      "\n\n"
      "Dependencies:"
      "\n"
      "- file_picker: ^5.2.5"
      "\n"
      "- file_icon: ^1.0.0"
      "\n"
      "- open_filex: ^4.3.2";
}
