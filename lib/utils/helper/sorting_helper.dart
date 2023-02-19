import 'package:bricks/data/models/local_package_model.dart';

class SortingHelper {
  static List<LocalPackage> localPackageByName(List<LocalPackage> resource) {
    List<LocalPackage> result = [];
    for (var element in resource) {
      result.add(element);
    }
    result.sort((a, b) {
      return a.name.toLowerCase().compareTo(b.name.toLowerCase());
    });
    return result;
  }
}
