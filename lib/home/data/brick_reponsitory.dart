import 'package:bricks/bricks/avatar/avatar.dart';
import 'package:bricks/bricks/button/difinition.dart';
import 'package:bricks/bricks/file/difinition.dart';
import 'package:bricks/bricks/photo/difinition.dart';
import 'package:bricks/bricks/textfield/difinition.dart';
import 'package:bricks/home/data/brick_group_model.dart';
import 'package:bricks/home/data/brick_model.dart';

class BrickRepository {
  List<BrickGroupModel> getData() {
    List<BrickGroupModel> data = List.empty(growable: true);
    List<BrickModel> otherBricks = List.empty(growable: true);
    for (var type in BrickType.values) {
      List<BrickModel> bricks = List.empty(growable: true);
      for (var brick in allBricks) {
        if (brick.type == type) bricks.add(brick);
      }
      data.add(BrickGroupModel(name: type.name, bricks: bricks));
    }
    for (var brick in allBricks) {
      if (brick.type == null) otherBricks.add(brick);
    }
    data.add(BrickGroupModel(name: "Other", bricks: otherBricks));
    return data;
  }
}

/// TODO: Add brick here to display
List<BrickModel> allBricks = [
  FileBrick(),
  PhotoBrick(),
  ButtonBrick(),
  TextfieldBrick(),
  AvatarBrick(),
];
