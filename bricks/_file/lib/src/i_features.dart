import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';

abstract class FilePackageInterface {
  Future<List<PlatformFile>> pickFile();

  Widget fileCard({required PlatformFile file,double iconSize,BoxDecoration? boxDecoration});

  Widget fileIcon(PlatformFile file, double? size);

  void openFile(PlatformFile file);
}
