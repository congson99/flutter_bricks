import 'package:bricks/models/package_model.dart';
import 'package:bricks/presentations/pick_file_page.dart';

class PackageData {
  static List<PackageModel> data() {
    return [
      PackageModel(
          "Pick File", "assets/icons/pick_file.svg", const PickFilePage())
    ];
  }
}
