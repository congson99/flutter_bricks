import 'package:_file/_file.dart';
import 'package:_photo/_photo.dart';
import 'package:_tinder_swipe/_tinder_swipe.dart';
import 'package:bricks/data/models/local_package_model.dart';

class FileLocalPackage extends LocalPackage {
  FileLocalPackage()
      : super(
          "230219",
          FilePackageDescription().version,
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
          PhotoPackageDescription().version,
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
          TinderSwipePackageDescription().version,
          "Tinder Swipe",
          "assets/icons/tinder.svg",
          TinderSwipePackageDescription().demoPage,
          TinderSwipePackageDescription().description,
        );
}

class LoginPackage extends LocalPackage {
  LoginPackage()
      : super(
          "230222",
          PhotoPackageDescription().version,
          "Login",
          "assets/icons/login.svg",
          PhotoPackageDescription().demoPage,
          PhotoPackageDescription().description,
        );
}
