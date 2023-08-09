import 'package:bricks/home/data/brick_model.dart';

class PhotoBrick extends BrickModel {
  PhotoBrick()
      : super(
            name: "Photo",
            iconPath: "assets/icons/brick/photo.svg",
            demoPage: null,
            type: BrickType.Widget);
}
