import 'package:bricks/util/style/base_text_style.dart';
import 'package:flutter/material.dart';

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
            style: BaseTextStyle.subtitle1(),
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
            style: BaseTextStyle.button(
                color: disable ? Colors.white : Colors.blue)),
      ),
    );
  }

  void pushDemoPage(BuildContext context) {
    if (demoPage != null) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => demoPage!));
    }
  }
}
