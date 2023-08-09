import 'package:_button/_button.dart';
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
                      preIconUrl: "assets/icons/brick/photo.svg",
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
                      preIconUrl: "assets/icons/brick/photo.svg",
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
                      preIconUrl: "assets/icons/brick/photo.svg",
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
                      preIconUrl: "assets/icons/brick/photo.svg",
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
