import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class PhotoPackageDemoPage extends StatefulWidget {
  const PhotoPackageDemoPage({Key? key}) : super(key: key);

  @override
  State<PhotoPackageDemoPage> createState() => _PhotoPackageDemoPageState();
}

class _PhotoPackageDemoPageState extends State<PhotoPackageDemoPage> {
  List<File> images = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photo"),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(16.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 16.0,
              crossAxisSpacing: 16.0,
              childAspectRatio: 1),
          itemCount: images.length,
          itemBuilder: (context, index) {
            final file = images[index];
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: FileImage(file),
                  fit: BoxFit.cover
                )
              ),
            );
          }),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "galery",
            onPressed: () {
              pickImage();
            },
            child: const Icon(Icons.upload),
          ),
          const SizedBox(
            height: 16.0,
          ),
          FloatingActionButton(
            heroTag: "camera",
            onPressed: () {
              takePhoto();
            },
            child: const Icon(Icons.camera_alt),
          ),
        ],
      ),
    );
  }

  Future pickImage() async {
    final temp = await ImagePicker().pickMultiImage();
    for(var i in temp){
      File file = File(i.path);
      if(!images.contains(file)){
        setState(() {
          images.add(file);
        });
      }
    }
  }

  Future takePhoto() async {
    final temp = await ImagePicker().pickImage(source: ImageSource.camera);
    File file = File(temp!.path);
    if (!images.contains(file)) {
      setState(() {
        images.add(file);
      });
    }
  }
}
