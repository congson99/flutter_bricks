import 'package:_textfield/config.dart';
import 'package:bricks/brick/textfield/demo_page.dart';
import 'package:bricks/data/model/brick.dart';
import 'package:_textfield/_textfield.dart';

class TextfieldBrick extends Brick{
   TextfieldBrick()
      : super(
          id: "CB24",
          version: TextfieldBrickConfig().version,
          name: TextfieldBrickConfig().name,
          iconPath: "assets/icons/textfield.svg",
          demoPage: TextfieldBrickDemoPage(brickName: TextfieldBrickConfig().name),
          description: TextfieldBrickConfig().description,
        );
}