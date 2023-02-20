import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PhotoPackageDemoPage extends StatefulWidget {
  const PhotoPackageDemoPage({Key? key}) : super(key: key);

  @override
  State<PhotoPackageDemoPage> createState() => _PhotoPackageDemoPageState();
}

class _PhotoPackageDemoPageState extends State<PhotoPackageDemoPage> {
  List<XFile> image = [];

  final  ImagePicker imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Photo"),
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(16.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
                childAspectRatio: 2 / 3),
            itemBuilder: (context, index) {
              return Container(
                color: Colors.black,
              );
          }
        ),
        floatingActionButton: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: ()async{
              final results = await imagePicker.pickMultiImage();
              if(results.isNotEmpty){

              }
            },
              child: Icon(Icons.upload),),
            SizedBox(height: 16.0,),
            FloatingActionButton(onPressed: (){}, child: Icon(Icons.camera_alt),)
          ],

    ),
    );
  }


}
