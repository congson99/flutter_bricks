import 'package:flutter/material.dart';

class PhotoPackageDemoPage extends StatelessWidget {
  const PhotoPackageDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Photo"),
        ),
        body: const Center(
          child: Text("Demo Page"),
        ));
  }
}
