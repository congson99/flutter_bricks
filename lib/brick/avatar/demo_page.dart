import 'package:_avatar/_avatar.dart';
import 'package:bricks/presentation/widget/app_bar_widget.dart';
import 'package:bricks/util/style/base_text_style.dart';
import 'package:flutter/material.dart';

class AvatarBrickDemoPage extends StatelessWidget {
  const AvatarBrickDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppBarWidget(title: "Avatar"),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                              Text("Just Name",
                                  style: BaseTextStyle.subtitle2()),
                              const SizedBox(height: 4),
                              Text("Name: Son Ho", style: BaseTextStyle.body()),
                              Text("Size: 48", style: BaseTextStyle.body())
                            ])),
                        AvatarBrick.circle(name: "Son Ho", size: 48)
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Divider(),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("From Asset",
                                    style: BaseTextStyle.subtitle2()),
                                const SizedBox(height: 4),
                                Text("Path: assets/images/person.jpg",
                                    style: BaseTextStyle.body()),
                                Text("Size: 56", style: BaseTextStyle.body())
                              ]),
                        ),
                        AvatarBrick.circle(
                            image: Image.asset("assets/images/person.jpg"),
                            size: 56)
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Divider(),
                    const SizedBox(height: 16),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("From Network",
                                    style: BaseTextStyle.subtitle2()),
                                const SizedBox(height: 4),
                                Text(
                                    "Path: https://i-english.vnecdn.net/2023/04/28/chipu-1682673790-1682673805-6534-1682673939.png",
                                    style: BaseTextStyle.body()),
                                Text("Size: 56", style: BaseTextStyle.body())
                              ],
                            ),
                          ),
                          const SizedBox(width: 8),
                          AvatarBrick.circle(
                              networkPath:
                                  "https://i-english.vnecdn.net/2023/04/28/chipu-1682673790-1682673805-6534-1682673939.png",
                              size: 56)
                        ]),
                    const SizedBox(height: 16),
                    const Divider(),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("With Border",
                                    style: BaseTextStyle.subtitle2()),
                                const SizedBox(height: 4),
                                Text("Path: assets/images/person.jpg",
                                    style: BaseTextStyle.body()),
                                Text("Size: 56", style: BaseTextStyle.body()),
                                Text(
                                    "Bodeer: Border.all(color: Colors.green, width: 2)",
                                    style: BaseTextStyle.body())
                              ]),
                        ),
                        const SizedBox(width: 8),
                        AvatarBrick.circle(
                            image: Image.asset("assets/images/person.jpg"),
                            border: Border.all(color: Colors.green, width: 2),
                            size: 56)
                      ],
                    ),
                    const SizedBox(height: 32),
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
