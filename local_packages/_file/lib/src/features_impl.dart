import 'package:_file/src/i_features.dart';
import 'package:file_icon/file_icon.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path/path.dart' as path;

class FilePackage implements FilePackageInterface {
  @override
  Future<List<PlatformFile>> pickFile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: true);
    return result!.files;
  }

  @override
  Widget fileCard(
      {required PlatformFile file,
      int maxLinesTitle = 1,
      double iconSize = 56,
      BoxDecoration? boxDecoration,
      TextStyle? textStyle,
      double? cardWidth}) {
    return Container(
      alignment: Alignment.center,
      width: cardWidth ?? iconSize * 1.2,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: iconSize * 1.2,
            width: iconSize * 1.2,
            decoration: boxDecoration ??
                BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(12.0)),
            child: fileIcon(file, iconSize),
          ),
          const SizedBox(height: 4),
          Wrap(
            children: [
              Text(file.name.split(path.extension(file.name))[0], style: textStyle, maxLines: maxLinesTitle, overflow: TextOverflow.ellipsis,),
              Text(path.extension(file.name), style: textStyle,)
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget fileIcon(PlatformFile file, double? size) {
    return FileIcon(
      ".${file.extension}",
      size: size ?? 24.0,
    );
  }

  @override
  void openFile(PlatformFile file) {
    OpenFilex.open(file.path);
  }
}
