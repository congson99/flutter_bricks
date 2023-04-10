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

  static const Color defaultdisableBackgroundColorType2 = Color(0xffdfdfe2);
  static const Color defaultdisableTextColorType2 = Color(0xff888b96);

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
                  !isSearching
                      ? TextfieldBrick.animationSearch(
                          onPressed: () {
                            onSearch();
                          },
                          searchIconPath: "assets/icons/ic_search.svg",
                          animationTextStype: const TextStyle(
                              color: Colors.black, fontSize: 18),
                          animationText: 'Tìm kiếm chức năng',
                          backgroundColor: Colors.white,
                          iconColor: Colors.black)
                      : TextfieldBrick.search(
                          onChanged: (value) {},
                          autoFocus: true,
                          borderRadius: BorderRadius.circular(12),
                          prefixIconPath: "assets/icons/ic_search.svg",
                          hintText: 'Tìm kiếm chức năng',
                          backgroundColor: Colors.white,
                          textStyle: const TextStyle(fontSize: 18),
                          hintStyle: const TextStyle(fontSize: 18),
                          disableTextColor: Colors.black,
                          disableBackgroundColor: Colors.grey),
                  const SizedBox(
                    height: 16,
                  ),
                  TextfieldBrick.common(
                    onChanged: (value) {},
                    title: 'Label',
                    errorText: 'Error text',
                    hintText: 'Placeholder text',
                    focusNode: focusNode1,
                    backgroundColor: Colors.white,
                    textInputAction: TextInputAction.done,
                    maxLines: 1,
                    iconColor: Colors.blue,
                    prefixIconPath: "assets/icons/ic_user.png",
                    suffixIconPath: "assets/icons/ic_eye.png",
                    shadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    focusShadow: [
                      BoxShadow(
                        color: Colors.green.withOpacity(0.25),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(16),
                    errorStyle: const TextStyle(fontSize: 18),
                    textStyle: const TextStyle(fontSize: 18),
                    hintStyle: const TextStyle(fontSize: 18),
                    titleStyle: const TextStyle(fontSize: 18),
                    disableBackgroundColor: defaultdisableBackgroundColor,
                    disableTextColor: defaultdisableTextColor,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextfieldBrick.common(
                    onChanged: (value) {},
                    title: 'Label',
                    errorText: 'Error text',
                    enable: false,
                    isValid: false,
                    hintText: 'Disable textfield',
                    backgroundColor: Colors.white,
                    prefixIconPath: "assets/icons/ic_user.png",
                    suffixIconPath: "assets/icons/ic_eye.png",
                    //contentPadding: EdgeInsets.all(20),
                    //iconSize: 100,
                    shadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        spreadRadius: 4,
                        blurRadius: 8,
                        offset: const Offset(0, 0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(16),
                    errorStyle: const TextStyle(fontSize: 18),
                    textStyle: const TextStyle(fontSize: 18),
                    hintStyle: const TextStyle(fontSize: 18),
                    titleStyle: const TextStyle(fontSize: 18),
                    disableBackgroundColor: defaultdisableBackgroundColor,
                    disableTextColor: defaultdisableTextColor,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextfieldBrick.common(
                    onChanged: (value) {},
                    title: 'Label',
                    errorText: 'Error text',
                    hintText: 'Error textfield',
                    focusNode: focusNode2,
                    backgroundColor: Colors.white,
                    textInputAction: TextInputAction.done,
                    maxLines: 1,
                    iconColor: Colors.red,
                    isValid: false,
                    prefixIconPath: "assets/icons/ic_user.png",
                    suffixIconPath: "assets/icons/ic_eye.png",
                    shadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    focusShadow: [
                      BoxShadow(
                        color: Colors.green.withOpacity(0.25),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    errorShadow: [
                      BoxShadow(
                        color: Colors.red.withOpacity(0.15),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(16),
                    errorStyle:
                        const TextStyle(fontSize: 18, color: Colors.red),
                    textStyle: const TextStyle(fontSize: 18),
                    hintStyle: const TextStyle(fontSize: 18),
                    titleStyle: const TextStyle(fontSize: 18),
                    disableBackgroundColor: defaultdisableBackgroundColor,
                    disableTextColor: defaultdisableTextColor,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextfieldBrick.iOSItem(
                    onChanged: (value) {},
                    title: 'Title',
                    hintText: 'Text',
                    // maxLength: 20,
                    textStyle: const TextStyle(
                      fontSize: 16,
                    ),
                    hintStyle: const TextStyle(
                      fontSize: 16,
                    ),
                    titleStyle: const TextStyle(
                      fontSize: 12,
                    ),
                    disableBackgroundColor: defaultdisableBackgroundColorType2,
                    disableTextColor: defaultdisableTextColorType2,
                    backgroundColor: Colors.white,
                    //eadOnly: true,
                    //enable: false,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextfieldBrick.iOSItem(
                    onChanged: (value) {},
                    title: 'Title',
                    hintText: 'Text',
                    // maxLength: 20,
                    textStyle: const TextStyle(
                      fontSize: 16,
                    ),
                    hintStyle: const TextStyle(
                      fontSize: 16,
                    ),
                    titleStyle: const TextStyle(
                      fontSize: 12,
                    ),
                    disableBackgroundColor: defaultdisableBackgroundColorType2,
                    disableTextColor: defaultdisableTextColorType2,
                    backgroundColor: Colors.white,
                    //eadOnly: true,
                    enable: false,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextfieldBrick.iOS(
                    groupTitle: 'Group Title',
                    items: [
                      TextfieldBrick.iOSItem(
                        onChanged: (value) {},
                        title: 'Tên người dùng',
                        hintText: 'Nhập tên của bạn',
                        textStyle: const TextStyle(
                          fontSize: 16,
                        ),
                        hintStyle: const TextStyle(
                          fontSize: 16,
                        ),
                        titleStyle: const TextStyle(
                          fontSize: 12,
                        ),
                        disableBackgroundColor:
                            defaultdisableBackgroundColorType2,
                        disableTextColor: defaultdisableTextColorType2,
                        backgroundColor: Colors.white,
                        // readOnly: true,
                        //enable: false,
                      ),
                      TextfieldBrick.iOSItem(
                        onChanged: (value) {},
                        title: 'Số điện thoại',
                        hintText: 'Nhập số điện thoại của bạn',
                        // isNavigation: true,
                        // iconSize: 20,
                        // enable: false,
                        // iconColor: Colors.blue,
                        textStyle: const TextStyle(
                          fontSize: 16,
                        ),
                        hintStyle: const TextStyle(
                          fontSize: 16,
                        ),
                        titleStyle: const TextStyle(
                          fontSize: 12,
                        ),
                        // underLineColor: Colors.red,
                        // underBorderWidth: 2,
                        // focusUnderLineColor: Colors.amber,
                        disableBackgroundColor:
                            defaultdisableBackgroundColorType2,
                        disableTextColor: defaultdisableTextColorType2,
                        backgroundColor: Colors.white,
                        // readOnly: true,
                        //enable: false,
                      ),
                      TextfieldBrick.iOSItem(
                        onChanged: (value) {},
                        title: 'Khu vực',
                        hintText: 'Chọn khu vực',
                        isNavigation: true,
                        onNavigationPressed: () {},
                        iconColor: Colors.blue,
                        iconSize: 20,
                        textStyle: const TextStyle(
                          fontSize: 16,
                        ),
                        hintStyle: const TextStyle(
                          fontSize: 16,
                        ),
                        titleStyle: const TextStyle(
                          fontSize: 12,
                        ),
                        disableBackgroundColor:
                            defaultdisableBackgroundColorType2,
                        disableTextColor: defaultdisableTextColorType2,
                        backgroundColor: Colors.white,
                        //readOnly: true,
                        //enable: false,
                      ),
                    ],
                    groupTitleStyle: const TextStyle(fontSize: 14),
                    description: 'Description',
                    borderRadius: BorderRadius.circular(16),
                    descriptionStyle: const TextStyle(fontSize: 14),
                    errorText: 'Error',
                    isValid: false,
                    errorStyle:
                        const TextStyle(fontSize: 14, color: Colors.red),
                    //borderRadius: BorderRadius.circular(16),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
