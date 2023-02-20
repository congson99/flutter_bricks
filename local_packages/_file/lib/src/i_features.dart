import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';

abstract class FilePackageInterface {
  PlatformFile pickFile();

  Widget fileCard(PlatformFile file);

  Widget fileIcon(PlatformFile file);

  void openFile(PlatformFile file);
}
