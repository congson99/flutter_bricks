import 'package:bricks/brick/avatar/demo_page.dart';
import 'package:bricks/data/model/brick.dart';

class AvatarBrick extends Brick {
  AvatarBrick()
      : super(
          name: "Avatar",
          iconPath: "assets/icons/brick/avatar.svg",
          demoPage: const AvatarBrickDemoPage(),
        );
}
