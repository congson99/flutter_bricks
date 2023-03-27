import 'package:bricks/data/models/local_package_model.dart';
import 'package:bricks/data/models/package_definitions.dart';

final List<LocalPackage> featurePackages = [
  TMALoginPackage(),
];

final List<LocalPackage> objectPackages = [
  FileLocalPackage(),
  PhotoPackage(),
];

final List<LocalPackage> animationPackages = [
  TinderSwipePackage(),
];
