import 'package:_button/_button.dart';
import 'package:bricks/data/model/brick.dart';

class ButtonBrick extends Brick {
  ButtonBrick()
      : super(
          id: "230223",
          version: "1.0",
          name: ButtonPackageDescription().name,
          iconPath: "assets/icons/file.svg",
          demoPage: ButtonPackageDescription().demoPage,
          description: ButtonPackageDescription().description,
        );
}
