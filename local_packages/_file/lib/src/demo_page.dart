import 'package:_file/src/features_impl.dart';
import 'package:file_icon/file_icon.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_filex/open_filex.dart';

class FilePackageDemoPage extends StatefulWidget {
  const FilePackageDemoPage({Key? key}) : super(key: key);

  @override
  State<FilePackageDemoPage> createState() => _FilePackageDemoPageState();
}

class _FilePackageDemoPageState extends State<FilePackageDemoPage> {

  List<PlatformFile> files = [];

  @override
  Widget build(BuildContext context) {
    const double margin = 24;

    return Scaffold(
        appBar: AppBar(
          title: const Text("File"),
        ),
        body: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: margin, vertical: margin),
          itemCount: files.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 16.0,
                childAspectRatio: 3/4),
            itemBuilder: (context, index){
            final file = files[index];
              return FilePackage().fileCard(file, context: context, closeTap: (){
                setState(() {
                  files.remove(file);
                });
              });
          }
        ),
      floatingActionButton: _uploadButton(),
    );
  }


  Widget _uploadButton(){
    return FloatingActionButton(
      onPressed: ()async{
        final results = await FilePackage().pickFile();
        for(var f in results){
          if(!files.contains(f)){
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
