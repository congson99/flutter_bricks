import 'package:bricks/bricks/button/demo_page.dart';
import 'package:bricks/home/data/brick_model.dart';

class ButtonBrick extends BrickModel {
  ButtonBrick()
      : super(
          name: "Button",
          iconPath: "assets/icons/brick/button.svg",
          demoPage: const ButtonBrickDemoPage(),
        );
}
