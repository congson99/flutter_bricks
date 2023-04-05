import 'package:bricks/data/model/brick_group.dart';
import 'package:bricks/data/model/package_definitions.dart';

abstract class BrickRepositoryInterface {
  List<BrickGroup> getAllBrickGroup();

  BrickGroup getFeatureBricks();

  BrickGroup getObjectBricks();

  BrickGroup getAnimationBricks();
}

class BrickRepository implements BrickRepositoryInterface {
  @override
  List<BrickGroup> getAllBrickGroup() {
    return [
      BrickRepository().getFeatureBricks(),
      BrickRepository().getObjectBricks(),
      BrickRepository().getAnimationBricks(),
    ];
  }

  @override
  BrickGroup getFeatureBricks() {
    return BrickGroup(name: "Feature", bricks: []);
  }

  @override
  BrickGroup getObjectBricks() {
    return BrickGroup(name: "Object", bricks: [
      FileLocalPackage(),
      PhotoPackage(),
      ButtonPackage(),
    ]);
  }

  @override
  BrickGroup getAnimationBricks() {
    return BrickGroup(name: "Animation", bricks: []);
  }
}
