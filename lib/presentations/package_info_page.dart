import 'package:bricks/data/models/local_package_model.dart';
import 'package:flutter/material.dart';

class PickFilePage extends StatelessWidget {
  const PickFilePage({Key? key, required this.packageModel}) : super(key: key);

  final LocalPackage packageModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(packageModel.name)));
  }
}
