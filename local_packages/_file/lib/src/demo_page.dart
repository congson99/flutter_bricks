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
              return _fileCard(file: file);
          }
        ),
      floatingActionButton: _uploadButton(),
    );
  }

  Widget _fileCard({required PlatformFile file}){
    return GestureDetector(
      onTap: (){
        OpenFilex.open(file.path!);
      },
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(16.0)
                    ),
                    child: FileIcon(".${file.extension}", size: 40.0,),
                  ),
                ),
              ),
              Text(
                file.name,
                style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 12
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: (){
                setState(() {
                  files.remove(file);
                });
              },
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey.shade100),
                child: const Icon(Icons.close, size: 16.0,),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _uploadButton(){
    return FloatingActionButton(
      onPressed: ()async{
        final results = await FilePicker.platform.pickFiles(allowMultiple: true);
        if(results!= null){
          for(var f in results.files){
            if(!files.contains(f)){
              setState(() {
                files.add(f);
              });
            }
          }
        }
      },
      child: const Icon(Icons.upload),
    );
  }
}
