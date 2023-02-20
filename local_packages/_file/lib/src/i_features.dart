import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';

abstract class FilePackageInterface {
  Future<List<PlatformFile>> pickFile();

  Widget fileCard(PlatformFile file);

  Widget fileIcon(PlatformFile file, double? size);

  void openFile(PlatformFile file);
}
