import 'package:_photo/_photo.dart';
import 'package:bricks/data/model/brick.dart';

class PhotoBrick extends Brick {
  PhotoBrick()
      : super(
          id: "CB20",
          version: PhotoPackageDescription().version,
          name: PhotoPackageDescription().name,
          iconPath: "assets/icons/photo.svg",
          demoPage: PhotoPackageDescription().demoPage,
          description: PhotoPackageDescription().description,
        );
}