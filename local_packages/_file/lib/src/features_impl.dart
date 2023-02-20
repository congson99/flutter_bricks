import 'package:_file/src/i_features.dart';
import 'package:file_icon/file_icon.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_filex/open_filex.dart';

class FilePackage implements FilePackageInterface {
  @override
  Future<List<PlatformFile>> pickFile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: true);
    return result!.files;
  }

  @override
  Widget fileCard(PlatformFile file) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(16.0)),
              child: fileIcon(file, 40.0),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            file.name,
            style: const TextStyle(color: Colors.black54, fontSize: 12),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }

  @override
  Widget fileIcon(PlatformFile file, double? size) {
    return FileIcon(
      ".${file.extension}",
      size: size ?? 28.0,
    );
  }

  @override
  void openFile(PlatformFile file) {
    OpenFilex.open(file.path!);
  }
}
