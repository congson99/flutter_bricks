import 'package:_file/_file.dart';
import 'package:bricks/data/model/brick.dart';

class FileBrick extends Brick {
  FileBrick()
      : super(
          name: "File",
          iconPath: "assets/icons/brick/file.svg",
          demoPage: FilePackageDescription().demoPage,
        );
}
