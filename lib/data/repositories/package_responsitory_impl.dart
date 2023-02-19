import 'package:bricks/data/models/local_package_model.dart';
import 'package:bricks/data/repositories/package_data.dart';

import 'i_package_repositories.dart';

class PackageRepository implements PackageRepositoryInterface {
  @override
  List<LocalPackage> getFeaturePackages() {
    return featurePackages;
  }

  @override
  List<LocalPackage> getObjectPackages() {
    return objectPackages;
  }

  @override
  List<LocalPackage> getAnimationPackages() {
    return animationPackages;
  }
}
