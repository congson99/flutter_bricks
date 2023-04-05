import 'package:_file/_file.dart';
import 'package:bricks/data/model/brick.dart';

class FileBrick extends Brick {
  FileBrick()
      : super(
          id: "230219",
          version: "1.0",
          name: FilePackageDescription().name,
          iconPath: "assets/icons/file.svg",
          demoPage: FilePackageDescription().demoPage,
          description: FilePackageDescription().description,
        );
}
