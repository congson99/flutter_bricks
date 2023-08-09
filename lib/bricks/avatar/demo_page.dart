import 'package:_avatar/_avatar.dart';
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
                              const Text("Just Name"),
                              const SizedBox(height: 4),
                              Text("Name: Son Ho",
                                  style:
                                      Theme.of(context).textTheme.bodyMedium),
                              Text("Size: 48",
                                  style: Theme.of(context).textTheme.bodyMedium)
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
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium),
                                const SizedBox(height: 4),
                                Text("Path: assets/images/person.jpg",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium),
                                Text("Size: 56",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium)
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
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium),
                                const SizedBox(height: 4),
                                Text(
                                    "Path: https://i-english.vnecdn.net/2023/04/28/chipu-1682673790-1682673805-6534-1682673939.png",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium),
                                Text("Size: 56",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium)
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
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium),
                                const SizedBox(height: 4),
                                Text("Path: assets/images/person.jpg",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium),
                                Text("Size: 56",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium),
                                Text(
                                    "Bodeer: Border.all(color: Colors.green, width: 2)",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium)
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

const double _height = 56;
const double horizontalMargin = 16;

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    required this.title,
    this.demoPage,
  });

  final String title;
  final Widget? demoPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      height: MediaQuery.of(context).padding.top + _height,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 8)
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildButton(context, "Back", () => Navigator.pop(context)),
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          buildButton(
              context, "Demo", () => pushDemoPage(context), (demoPage == null)),
        ],
      ),
    );
  }

  Widget buildButton(BuildContext context, String content, VoidCallback onTap,
      [bool disable = false]) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        height: MediaQuery.of(context).padding.top + _height,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: horizontalMargin),
        child: Text(content,
            style: Theme.of(context)
                .textTheme
                .labelSmall
                ?.copyWith(color: disable ? Colors.white : Colors.blue)),
      ),
    );
  }

  void pushDemoPage(BuildContext context) {
    if (demoPage != null) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => demoPage!));
    }
  }
}
