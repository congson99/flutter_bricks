import 'package:bricks/bricks/textfield/demo_page.dart';
import 'package:bricks/home/data/brick_model.dart';

class TextfieldBrick extends BrickModel {
  TextfieldBrick()
      : super(
          name: "Textfield",
          iconPath: "assets/icons/brick/textfield.svg",
          demoPage: const TextfieldBrickDemoPage(),
        );
}
