import 'package:_file/src/features_impl.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class FilePackageDemoPage extends StatefulWidget {
  const FilePackageDemoPage({Key? key}) : super(key: key);

  @override
  State<FilePackageDemoPage> createState() => _FilePackageDemoPageState();
}

class _FilePackageDemoPageState extends State<FilePackageDemoPage> {
  List<PlatformFile> files = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("File"),
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
            runSpacing: 24,
            spacing: 24,
            children: files
                .map((file) => GestureDetector(
                    onTap: () {
                      FilePackage().openFile(file);
                    },
                    child: FilePackage().fileCard(file: file)))
                .toList()),
      ),
      floatingActionButton: _uploadButton(),
    );
  }

  Widget _uploadButton() {
    return FloatingActionButton(
      onPressed: () async {
        final results = await FilePackage().pickFile();
        for (var f in results) {
          if (!files.contains(f)) {
            setState(() {
              files.add(f);
            });
          }
        }
      },
      child: const Icon(Icons.upload),
    );
  }
}
