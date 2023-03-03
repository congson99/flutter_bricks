import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

import 'features_impl.dart';

class PhotoPackageDemoPage extends StatefulWidget {
  const PhotoPackageDemoPage({Key? key}) : super(key: key);

  @override
  State<PhotoPackageDemoPage> createState() => _PhotoPackageDemoPageState();
}

class _PhotoPackageDemoPageState extends State<PhotoPackageDemoPage> {
  List<File> images = [];

  @override
  Widget build(BuildContext context) {
    const double horizontalMargin = 16;
    const double minCardSize = 80;
    double contentWidth = min(MediaQuery.of(context).size.width, 700);
    int count = contentWidth ~/ minCardSize;
    double cardSize = (contentWidth - horizontalMargin) / count;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Photo"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Wrap(
          runSpacing: 16.0,
          spacing: 16.0,
          children: images
              .map((e) => PhotoPackage().imageCard(
                  context: context,
                  file: e,
                  cardSize: cardSize,
                  horizontalMargin: horizontalMargin,
                  remove: () {
                    setState(() {
                      images.remove(e);
                    });
                  }))
              .toList(),
        ),
      ),
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
    final temp = await PhotoPackage().pickImage();
    for (var i in temp) {
      if (!images.contains(i)) {
        setState(() {
          images.add(i);
        });
      }
    }
  }

  Future takePhoto() async {
    final temp = await PhotoPackage().takePhoto();
    if (!images.contains(temp)) {
      setState(() {
        images.add(temp);
      });
    }
  }
}
