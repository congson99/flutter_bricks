import 'package:_button/_button.dart';
import 'package:_button/src/base_button.dart';
import 'package:flutter/material.dart';

class ButtonPackageDemoPage extends StatelessWidget {
  const ButtonPackageDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button')),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 32),
              BaseButton(
                onPressed: () {},
                content:
                    'ButtonButtonButtonButtonButtonButtonButtonButtonButtonButtonButtonButton',
                height: 48,
                isDirection: true,
                isExpandedContent: true,
                textStyle: const TextStyle(fontSize: 18),
                contentColor: Colors.white,
                backgroundColor: Colors.blue,
                disableContentColor: Colors.white,
                disableBackgroundColor: Colors.grey,
                alignment: Alignment.centerLeft,
              ),
              const SizedBox(height: 32),
              ButtonPackage().primary(
                onPressed: () {},
                content: 'Primary',
                preIconUrl: "assets/icons/Log_out.png",
                textStyle: const TextStyle(fontSize: 18),
                contentColor: Colors.white,
                backgroundColor: Colors.blue,
                disableContentColor: Colors.white,
                disableBackgroundColor: Colors.grey,
              ),
              const SizedBox(height: 32),
              ButtonPackage().secondary(
                onPressed: () {},
                content: 'Primary',
                preIconUrl: "assets/icons/login.svg",
                textStyle: const TextStyle(fontSize: 18),
                contentColor: Colors.blue,
                disableContentColor: Colors.grey,
              ),
              const SizedBox(height: 32),
              ButtonPackage().text(
                onPressed: () {},
                content: 'Primary',
                textStyle: const TextStyle(fontSize: 18),
                contentColor: Colors.blue,
                disableContentColor: Colors.grey,
              ),
              const SizedBox(height: 32),
              ButtonPackage().primary(
                disable: true,
                onPressed: () {},
                content: 'Primary',
                preIconUrl: "assets/icons/Log_out.png",
                textStyle: const TextStyle(fontSize: 18),
                contentColor: Colors.white,
                backgroundColor: Colors.blue,
                disableContentColor: Colors.white,
                disableBackgroundColor: Colors.grey,
              ),
              const SizedBox(height: 32),
              ButtonPackage().secondary(
                disable: true,
                onPressed: () {},
                content: 'Primary',
                preIconUrl: "assets/icons/login.svg",
                textStyle: const TextStyle(fontSize: 18),
                contentColor: Colors.blue,
                disableContentColor: Colors.grey,
              ),
              const SizedBox(height: 32),
              ButtonPackage().text(
                disable: true,
                onPressed: () {},
                content: 'Primary',
                textStyle: const TextStyle(fontSize: 18),
                contentColor: Colors.blue,
                disableContentColor: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
