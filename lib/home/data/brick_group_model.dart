import 'package:bricks/home/data/brick_model.dart';

class BrickGroupModel {
  BrickGroupModel({
    required this.name,
    required this.bricks,
  });

  final String name;
  final List<BrickModel> bricks;
}
