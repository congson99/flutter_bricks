import 'package:bricks/data/models/local_package_model.dart';

abstract class PackageRepositoryInterface {
  List<LocalPackage> getFeaturePackages();

  List<LocalPackage> getObjectPackages();

  List<LocalPackage> getAnimationPackages();
}
