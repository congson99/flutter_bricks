import 'dart:io';

import 'package:flutter/cupertino.dart';

abstract class PhotoPackageInterface {
  Future<List<File>> pickImage();

  Future<File> takePhoto();

  Widget imageCard(
      {required File file,
      required BuildContext context,
      required VoidCallback remove,
      double? cardSize,
      double? horizontalMargin});
}
