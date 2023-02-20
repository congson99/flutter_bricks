import 'package:_file/src/i_features.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class FilePackage implements FilePackageInterface {
  @override
  PlatformFile pickFile() {
    // TODO: implement pickFile
    throw UnimplementedError();
  }

  @override
  Widget fileCard(PlatformFile file) {
    // TODO: implement fileCard
    throw UnimplementedError();
  }

  @override
  Widget fileIcon(PlatformFile file) {
    // TODO: implement fileIcon
    throw UnimplementedError();
  }

  @override
  void openFile(PlatformFile file) {
    // TODO: implement openFile
  }
}
