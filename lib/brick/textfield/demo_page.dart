import 'package:_textfield/_textfield.dart';
import 'package:bricks/presentation/widget/app_bar_widget.dart';
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
