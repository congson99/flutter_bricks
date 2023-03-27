import 'package:_file/_file.dart';
import 'package:_photo/_photo.dart';
import 'package:bricks/data/models/local_package_model.dart';
import 'package:flutter/material.dart';

class FileLocalPackage extends LocalPackage {
  FileLocalPackage()
      : super(
          "230219",
          FilePackageDescription().name,
          "assets/icons/file.svg",
          FilePackageDescription().demoPage,
          FilePackageDescription().description,
        );
}

class PhotoPackage extends LocalPackage {
  PhotoPackage()
      : super(
          "230220",
          PhotoPackageDescription().name,
          "assets/icons/photo.svg",
          PhotoPackageDescription().demoPage,
          PhotoPackageDescription().description,
        );
}

class TinderSwipePackage extends LocalPackage {
  TinderSwipePackage()
      : super(
          "230221",
          "Tinder Swipe",
          "assets/icons/tinder.svg",
          const Scaffold(),
          "",
        );
}

class TMALoginPackage extends LocalPackage {
  TMALoginPackage()
      : super(
          "230222",
          "TMA Login",
          "assets/icons/login.svg",
          const Scaffold(),
          "",
        );
}
