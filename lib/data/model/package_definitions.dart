import 'package:_button/_button.dart';
import 'package:_file/_file.dart';
import 'package:_photo/_photo.dart';
import 'package:bricks/data/model/brick.dart';

class FileLocalPackage extends Brick {
  FileLocalPackage()
      : super(
          id: "230219",
          version: "1.0",
          name: FilePackageDescription().name,
          iconPath: "assets/icons/file.svg",
          demoPage: FilePackageDescription().demoPage,
          description: FilePackageDescription().description,
        );
}

class PhotoPackage extends Brick {
  PhotoPackage()
      : super(
          id: "230220",
          version: "1.0",
          name: PhotoPackageDescription().name,
          iconPath: "assets/icons/photo.svg",
          demoPage: PhotoPackageDescription().demoPage,
          description: PhotoPackageDescription().description,
        );
}

class ButtonPackage extends Brick {
  ButtonPackage()
      : super(
          id: "230223",
          version: "1.0",
          name: ButtonPackageDescription().name,
          iconPath: "assets/icons/file.svg",
          demoPage: ButtonPackageDescription().demoPage,
          description: ButtonPackageDescription().description,
        );
}
