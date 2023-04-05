import 'package:bricks/data/model/brick.dart';

class SortingHelper {
  static List<Brick> brickByName(List<Brick> resource) {
    List<Brick> result = [];
    for (var element in resource) {
      result.add(element);
    }
    result.sort((a, b) {
      return a.name.toLowerCase().compareTo(b.name.toLowerCase());
    });
    return result;
  }
}
