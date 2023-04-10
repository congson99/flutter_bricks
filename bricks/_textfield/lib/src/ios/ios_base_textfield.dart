import 'package:flutter/material.dart';

import 'ios_base_textfield_item.dart';

class IOSBaseTextfield extends StatelessWidget {
  const IOSBaseTextfield({
    super.key,
    required this.groupTitle,
    required this.errorText,
    required this.description,
    this.borderRadius,
    required this.items,
    required this.groupTitleStyle,
    this.groupTitlePadding,
    required this.errorStyle,
    required this.descriptionStyle,
    this.descriptionPadding,
    this.errorTextPadding,
    this.isValid = true,
  });

  final String groupTitle;
  final TextStyle groupTitleStyle;
  final String errorText;
  final TextStyle errorStyle;
  final TextStyle descriptionStyle;
  final String description;
  final BorderRadius? borderRadius;
  final EdgeInsets? groupTitlePadding;
  final EdgeInsets? descriptionPadding;
  final EdgeInsets? errorTextPadding;
  final List<IOSBaseTextfieldItem> items;
  final bool isValid;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              groupTitlePadding ?? const EdgeInsets.only(left: 12, bottom: 8),
          child: Text(
            groupTitle,
            style: groupTitleStyle,
          ),
        ),
        ClipRRect(
          borderRadius: borderRadius ?? BorderRadius.circular(0),
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (context, index) => items[index],
            separatorBuilder: (context, index) {
              return const Divider(
                height: 0,
              );
            },
          ),
        ),
        buildText(description, descriptionStyle, descriptionPadding),
        if (!isValid) buildText(errorText, errorStyle, errorTextPadding),
      ],
    );
  }

  Widget buildText(String text, TextStyle textStyle, EdgeInsets? textPadding) {
    if (text != '') {
      return Padding(
        padding: textPadding ?? const EdgeInsets.only(left: 12, top: 8),
        child: Text(
          text,
          style: textStyle,
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
