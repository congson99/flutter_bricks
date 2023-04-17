import 'package:_textfield/_textfield.dart';
import 'package:bricks/presentation/widget/app_bar_widget.dart';
import 'package:flutter/material.dart';

class TextfieldBrickDemoPage extends StatefulWidget {
  const TextfieldBrickDemoPage({super.key, required this.brickName});

  final String brickName;

  @override
  State<TextfieldBrickDemoPage> createState() => _TextfieldBrickDemoPageState();
}

class _TextfieldBrickDemoPageState extends State<TextfieldBrickDemoPage> {
  TextEditingController controller = TextEditingController();

  late FocusNode focusNode1;
  late FocusNode focusNode2;

  bool isSearching = false;

  Future<void> onSearch() async {
    setState(() {
      isSearching = true;
    });
  }

  static const Color defaultdisableBackgroundColor = Color(0xfff8f8f8);
  static const Color defaultdisableTextColor = Color(0xff808080);

  @override
  void initState() {
    focusNode1 = FocusNode();
    focusNode2 = FocusNode();
    focusNode1.addListener(() => setState(() {}));
    focusNode2.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          AppBarWidget(title: "${widget.brickName} Demo"),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView(
                children: [
                  const SizedBox(height: 16),
                  TextfieldBrick.common(
                    onChanged: (value) {},
                    onSubmit: (value) {},
                    label: 'Label',
                    hintText: 'Placeholder text',
                    focusNode: focusNode1,
                    backgroundColor: Colors.white,
                    isRequired: true,
                    textInputAction: TextInputAction.done,
                    maxLines: 1,
                    shadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    // borderRadius: BorderRadius.circular(16),
                    textStyle: const TextStyle(fontSize: 18),
                    hintTextStyle: const TextStyle(fontSize: 18),
                    labelTextStyle: const TextStyle(fontSize: 18),
                    disableBackgroundColor: defaultdisableBackgroundColor,
                    disableTextColor: defaultdisableTextColor,
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
