import 'package:flutter/material.dart';

import 'button_package.dart';

class ButtonPackageDemoPage extends StatelessWidget {
  const ButtonPackageDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button')),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonPackage().primary(
              buttonHeight: 200,
              iconSize: 36,
              isExpandedContent: true,
              borderRadius: 20,
              paddingButton: 20,
              betweenItemSpacing: 10,
              onPressed: () {},
              title: 'EXPANED CONTENT',
              preIconUrl: "assets/icons/home_line.png",
            ),
            const SizedBox(
              height: 16,
            ),
            ButtonPackage().primary(
              buttonHeight: 50,
              iconSize: 36,
              isFixedWidth: true,
              isDirection: true,
              isExpandedContent: true,
              betweenItemSpacing: 10,
              onPressed: () {},
              title: 'EXPANED CONTENT',
            ),
            const SizedBox(
              height: 16,
            ),
            ButtonPackage().primary(
              buttonHeight: 50,
              betweenItemSpacing: 20,
              onPressed: () {},
              title: 'BUTTON',
              preIconUrl: "assets/icons/home_line.png",
            ),
            const SizedBox(
              height: 16,
            ),
            ButtonPackage().primary(
              //buttonHeight: 50,
              //iconSize: 23,
              //isDirection: true,
              onPressed: () {},
              title: 'FIXED WIDTH',
              isFixedWidth: true,
              betweenItemSpacing: 20,
              //iconColor: Colors.white,
              preIconUrl: "assets/icons/home_line.png",
            ),
            const SizedBox(
              height: 12,
            ),
            ButtonPackage().primary(
              betweenItemSpacing: 10,
              isActive: false,
              onPressed: () {},
              title: 'DISABLE BUTTON',
              //iconColor: Colors.white,
              preIconUrl: "assets/icons/home_line.png",
            ),
            const SizedBox(
              height: 16,
            ),
            ButtonPackage().secondary(
                onPressed: () {},
                title: 'BUTTON',
                buttonHeight: 56,
                iconSize: 32,
                isDirection: true,
                borderRadius: 8,
                isExpanedContent: true),
            const SizedBox(
              height: 16,
            ),
            ButtonPackage().secondary(
              onPressed: () {},
              title: 'DISABLE BUTTON',
              buttonHeight: 56,
              isActive: false,
              iconSize: 32,
              isDirection: true,
            ),
            const SizedBox(
              height: 16,
            ),
            ButtonPackage().text(
                onPressed: () {},
                title: 'TEXTBUTTON',
                isActive: true,
                iconSize: 32,
                preIconUrl: "assets/icons/login.svg"),
            const SizedBox(
              height: 16,
            ),
            ButtonPackage().text(
                onPressed: () {},
                betweenItemSpacing: 10,
                title: 'DISABLE TEXTBUTTON',
                disableTextColor: Colors.grey,
                isActive: false,
                iconSize: 32,
                preIconUrl: "assets/icons/login.svg"),
          ],
        ),
      ),
    );
  }
}
