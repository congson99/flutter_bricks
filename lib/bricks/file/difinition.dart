import 'package:_file/_file.dart';
import 'package:bricks/home/data/brick_model.dart';

class FileBrick extends BrickModel {
  FileBrick()
      : super(
            name: "File",
            iconPath: "assets/icons/brick/file.svg",
            demoPage: FilePackageDescription().demoPage,
            type: BrickType.Widget);
}
