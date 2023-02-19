import 'package:_file/_file.dart';
import 'package:bricks/data/models/local_package_model.dart';

class PackageRepository {
  static List<LocalPackage> getFeaturePackages() {
    return featurePackages;
  }

  static List<LocalPackage> getObjectPackages() {
    return objectPackages;
  }

  static List<LocalPackage> getAnimationPackages() {
    return animationPackages;
  }
}

final List<LocalPackage> featurePackages = [
  LocalPackage(
      "Login", "assets/icons/pick_file.svg", const FilePackageDemoPage()),
  LocalPackage(
      "Register", "assets/icons/pick_file.svg", const FilePackageDemoPage()),
  LocalPackage(
      "OTP", "assets/icons/pick_file.svg", const FilePackageDemoPage()),
];
final List<LocalPackage> objectPackages = [
  LocalPackage(
      "File", "assets/icons/pick_file.svg", const FilePackageDemoPage()),
];
final List<LocalPackage> animationPackages = [
  LocalPackage(
      "Swipe", "assets/icons/pick_file.svg", const FilePackageDemoPage()),
];
