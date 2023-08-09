import 'package:bricks/bricks/avatar/demo_page.dart';
import 'package:bricks/home/data/brick_model.dart';

class AvatarBrick extends BrickModel {
  AvatarBrick()
      : super(
          name: "Avatar",
          iconPath: "assets/icons/brick/avatar.svg",
          demoPage: const AvatarBrickDemoPage(),
        );
}
