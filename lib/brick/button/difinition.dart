import 'package:bricks/brick/button/demo_page.dart';
import 'package:bricks/data/model/brick.dart';

class ButtonBrick extends Brick {
  ButtonBrick()
      : super(
          name: "Button",
          iconPath: "assets/icons/brick/button.svg",
          demoPage: const ButtonBrickDemoPage(),
        );
}
