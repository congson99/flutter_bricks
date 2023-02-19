import 'package:_file/_file.dart';
import 'package:_photo/_photo.dart';
import 'package:bricks/data/models/local_package_model.dart';

class FileLocalPackage extends LocalPackage {
  FileLocalPackage()
      : super(
          "230219",
          FilePackageDescriptions().version,
          FilePackageDescriptions().name,
          "assets/icons/file.svg",
          FilePackageDescriptions().demoPage,
          FilePackageDescriptions().description,
        );
}

class PhotoPackage extends LocalPackage {
  PhotoPackage()
      : super(
          "230220",
          PhotoPackageDescriptions().version,
          PhotoPackageDescriptions().name,
          "assets/icons/photo.svg",
          PhotoPackageDescriptions().demoPage,
          PhotoPackageDescriptions().description,
        );
}

class TinderSwipePackage extends LocalPackage {
  TinderSwipePackage()
      : super(
          "230221",
          PhotoPackageDescriptions().version,
          "Tinder Swipe",
          "assets/icons/tinder.svg",
          PhotoPackageDescriptions().demoPage,
          PhotoPackageDescriptions().description,
        );
}

class LoginPackage extends LocalPackage {
  LoginPackage()
      : super(
          "230222",
          PhotoPackageDescriptions().version,
          "Login",
          "assets/icons/login.svg",
          PhotoPackageDescriptions().demoPage,
          PhotoPackageDescriptions().description,
        );
}
