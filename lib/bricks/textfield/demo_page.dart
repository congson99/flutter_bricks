import 'package:_textfield/_textfield.dart';
import 'package:flutter/material.dart';

class TextfieldBrickDemoPage extends StatelessWidget {
  const TextfieldBrickDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          const AppBarWidget(title: "Textfield Demo"),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                children: [
                  const SizedBox(height: 16),
                  TextfieldBrick.common(
                    textStyle: const TextStyle(fontSize: 18),
                    hintTextStyle: const TextStyle(fontSize: 18),
                    labelTextStyle: const TextStyle(fontSize: 18),
                    disableBackgroundColor: Colors.transparent,
                    disableTextColor: Colors.transparent,
                    errorTextStyle: const TextStyle(),
                    focusBorderColor: Colors.green,
                    errorBorderColor: Colors.green,
                    enableBorderColor: Colors.green,
                    disableBorderColor: Colors.green,
                    isObscured: false,
                    textAlign: TextAlign.right,
                    textAlignVertical: TextAlignVertical.center,
                    borderRadius: BorderRadius.zero,
                    borderWidth: 1,
                    textCapitalization: TextCapitalization.characters,
                    readOnly: true,
                    backgroundColor: Colors.transparent,
                  ),
                  const SizedBox(height: 16),
                  const SizedBox(height: 16),
                ],
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
