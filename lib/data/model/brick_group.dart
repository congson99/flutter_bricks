import 'package:bricks/data/model/brick.dart';

class BrickGroup {
  BrickGroup({
    required this.name,
    required this.bricks,
  });

  final String name;
  final List<Brick> bricks;
}
