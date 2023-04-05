import 'package:_button/_button.dart';
import 'package:bricks/brick/button/demo_page.dart';
import 'package:bricks/data/model/brick.dart';

class ButtonBrick extends Brick {
  ButtonBrick()
      : super(
          id: "CB23",
          version: ButtonBrickConfig().version,
          name: ButtonBrickConfig().name,
          iconPath: "assets/icons/file.svg",
          demoPage: ButtonBrickDemoPage(brickName: ButtonBrickConfig().name),
          description: ButtonBrickConfig().description,
        );
}
