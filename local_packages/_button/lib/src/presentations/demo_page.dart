import 'package:_button/src/presentations/features_impl.dart';
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonPackage().primary(
              buttonHeight: 50,
              iconSize: 23,
              isDirection: true,
              isExpanedContent: true,
              //isFixedWidth: true,
              //isActive: false,
              onPressed: () {},
              title: 'BUTTON',
              //iconColor: Colors.white,
              //preIconUrl: "assets/icons/home_line.png",
            ),
            const SizedBox(
              height: 32,
            ),
            ButtonPackage().primary(
              buttonHeight: 50,
              iconSize: 23,
              //isDirection: true,
              //isExpanedContent: true,
              //isFixedWidth: true,
              //isActive: false,
              onPressed: () {},
              title: 'BUTTON',
              //iconColor: Colors.white,
              preIconUrl: "assets/icons/home_line.png",
            ),
            const SizedBox(
              height: 32,
            ),
            ButtonPackage().primary(
              //buttonHeight: 50,
              //iconSize: 23,
              //isDirection: true,
              onPressed: () {},
              title: 'FIXED WIDTH',
              isFixedWidth: true,
              //iconColor: Colors.white,
              preIconUrl: "assets/icons/home_line.png",
            ),
            const SizedBox(
              height: 32,
            ),
            ButtonPackage().primary(
              //buttonHeight: 50,
              //iconSize: 23,
              //isDirection: true,
              isActive: false,
              onPressed: () {},
              title: 'BUTTON',
              //iconColor: Colors.white,
              preIconUrl: "assets/icons/home_line.png",
            ),
            const SizedBox(
              height: 32,
            ),
            ButtonPackage().secondary(
                onPressed: () {},
                title: 'BUTTON',
                buttonHeight: 56,
                //isActive: false,
                iconSize: 32,
                isDirection: true,
                //iconColor: Colors.red[300],
                //preIconUrl: "assets/icons/photo.svg"
            ),
            const SizedBox(
              height: 32,
            ),
            ButtonPackage().secondary(
                onPressed: () {},
                title: 'BUTTON',
                buttonHeight: 56,
                isActive: false,
                iconSize: 32,
                isDirection: true,
                //iconColor: Colors.red[300],
                //preIconUrl: "assets/icons/photo.svg"
            ),
            const SizedBox(
              height: 32,
            ),
            ButtonPackage().text(
                onPressed: () {},
                title: 'BUTTON',
                isActive: true,
                iconSize: 32,
                preIconUrl: "assets/icons/login.svg"),
            const SizedBox(
              height: 32,
            ),
            ButtonPackage().text(
                onPressed: () {},
                title: 'BUTTON',
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
