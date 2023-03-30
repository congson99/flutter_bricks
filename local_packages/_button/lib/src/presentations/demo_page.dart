import 'package:_button/src/presentations/features_impl.dart';
import 'package:flutter/material.dart';

class ButtonPackageDemoPage extends StatelessWidget {
  const ButtonPackageDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ButtonPackage().primary(onPressed: (){}, title: 'BUTTON'),
          const SizedBox(height: 32,),
          ButtonPackage().secondary(onPressed: (){}, title: 'BUTTON'),
          const SizedBox(height: 32,),
          ButtonPackage().text(onPressed: (){}, title: 'BUTTON'),
        ],),
      ),
    );
  }
}