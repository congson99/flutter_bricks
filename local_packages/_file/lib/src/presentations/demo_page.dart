import 'package:flutter/material.dart';

class FilePackageDemoPage extends StatelessWidget {
  const FilePackageDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("File"),
      ),
      body: const Center(
        child: Text("Demo Page"),
      ),
    );
  }
}
