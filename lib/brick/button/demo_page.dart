import 'package:_button/_button.dart';
import 'package:bricks/presentation/widget/app_bar_widget.dart';
import 'package:flutter/material.dart';

class ButtonBrickDemoPage extends StatelessWidget {
  const ButtonBrickDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppBarWidget(title: "Button Demo"),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 32),
                    ButtonBrick.base(
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
                    ButtonBrick.primary(
                      onPressed: () {},
                      content: 'Primary',
                      preIconUrl: "assets/icons/photo.svg",
                      textStyle: const TextStyle(fontSize: 18),
                      contentColor: Colors.white,
                      backgroundColor: Colors.blue,
                      disableContentColor: Colors.white,
                      disableBackgroundColor: Colors.grey,
                    ),
                    const SizedBox(height: 32),
                    ButtonBrick.secondary(
                      onPressed: () {},
                      content: 'Primary',
                      preIconUrl: "assets/icons/photo.svg",
                      textStyle: const TextStyle(fontSize: 18),
                      contentColor: Colors.blue,
                      disableContentColor: Colors.grey,
                    ),
                    const SizedBox(height: 32),
                    ButtonBrick.text(
                      onPressed: () {},
                      content: 'Primary',
                      textStyle: const TextStyle(fontSize: 18),
                      contentColor: Colors.blue,
                      disableContentColor: Colors.grey,
                    ),
                    const SizedBox(height: 32),
                    ButtonBrick.primary(
                      disable: true,
                      onPressed: () {},
                      content: 'Primary',
                      preIconUrl: "assets/icons/photo.svg",
                      textStyle: const TextStyle(fontSize: 18),
                      contentColor: Colors.white,
                      backgroundColor: Colors.blue,
                      disableContentColor: Colors.white,
                      disableBackgroundColor: Colors.grey,
                    ),
                    const SizedBox(height: 32),
                    ButtonBrick.secondary(
                      disable: true,
                      onPressed: () {},
                      content: 'Primary',
                      preIconUrl: "assets/icons/photo.svg",
                      textStyle: const TextStyle(fontSize: 18),
                      contentColor: Colors.blue,
                      disableContentColor: Colors.grey,
                    ),
                    const SizedBox(height: 32),
                    ButtonBrick.text(
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
          ),
        ],
      ),
    );
  }
}
