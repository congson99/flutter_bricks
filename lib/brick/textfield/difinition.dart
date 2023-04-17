import 'package:bricks/brick/textfield/demo_page.dart';
import 'package:bricks/data/model/brick.dart';

class TextfieldBrick extends Brick {
  TextfieldBrick()
      : super(
          name: "Textfield",
          iconPath: "assets/icons/textfield.svg",
          demoPage: const TextfieldBrickDemoPage(),
        );
}
