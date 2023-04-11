import 'package:flutter/material.dart';

class IOSBaseTextfieldItem extends StatelessWidget {
  const IOSBaseTextfieldItem({
    super.key,
    required this.onChanged,
    this.onSubmit,
    required this.title,
    required this.hintText,
    this.initialValue,
    this.isObscured = false,
    this.enable = true,
    this.titlePadding,
    this.contentPadding,
    this.focusNode,
    this.borderRadius,
    this.textEditingController,
    this.textCapitalization = TextCapitalization.none,
    this.autoFocus = false,
    this.maxLength,
    this.maxLines,
    required this.backgroundColor,
    this.readOnly = false,
    required this.textStyle,
    required this.hintStyle,
    this.textAlign = TextAlign.start,
    this.textAlignVertical = TextAlignVertical.center,
    this.textInputAction,
    this.textInputType,
    this.verticalItemSpacing = 8,
    required this.titleStyle,
    required this.disableTextColor,
    required this.disableBackgroundColor,
    this.isValid = true,
    this.underBorderWidth,
    this.underLineColor = Colors.grey,
    this.isNavigation = false,
    this.onNavigationPressed,
    this.iconSize,
    this.iconColor,
    this.iconAlign,
    this.titleStarSpacing, this.required = false,
  });

  final ValueChanged<String> onChanged;
  final ValueChanged<String>? onSubmit;
  final String title;
  final bool required;
  final String hintText;
  final bool isValid;
  final String? initialValue;
  final bool isObscured;
  final bool enable;
  final EdgeInsets? titlePadding;
  final double? titleStarSpacing;
  final EdgeInsets? contentPadding;
  final FocusNode? focusNode;
  final BorderRadius? borderRadius;
  final double? underBorderWidth;
  final Color underLineColor;
  final TextEditingController? textEditingController;
  final TextCapitalization textCapitalization;
  final bool autoFocus;
  final int? maxLength;
  final int? maxLines;
  final Color backgroundColor;
  final bool readOnly;
  final TextStyle textStyle;
  final TextStyle hintStyle;
  final TextStyle titleStyle;
  final TextAlign textAlign;
  final TextAlignVertical textAlignVertical;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final double verticalItemSpacing;
  final Color disableTextColor;
  final Color disableBackgroundColor;
  final bool isNavigation;
  final double? iconSize;
  final Color? iconColor;
  final AlignmentGeometry? iconAlign;
  final VoidCallback? onNavigationPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: enable ? backgroundColor : disableBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: underLineColor, width: underBorderWidth ?? 0.7))),
          child: Column(children: [
            buildTitle(),
            TextFormField(
                enabled: enable,
                onChanged: onChanged,
                onFieldSubmitted: onSubmit,
                initialValue: initialValue,
                controller: textEditingController,
                textCapitalization: textCapitalization,
                autofocus: autoFocus,
                maxLength: maxLength,
                maxLines: maxLines,
                obscureText: isObscured,
                focusNode: focusNode,
                readOnly: readOnly,
                textAlign: textAlign,
                keyboardType: textInputType,
                textAlignVertical: textAlignVertical,
                textInputAction: textInputAction,
                style: enable
                    ? textStyle
                    : textStyle.copyWith(color: disableTextColor),
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: contentPadding ??
                      const EdgeInsets.only(top: 2, bottom: 16),
                  hintStyle: hintStyle,
                  hintText: hintText,
                  suffixIcon: isNavigation
                      ? IconButton(
                          alignment: iconAlign ?? Alignment.center,
                          padding: EdgeInsets.zero,
                          icon: Icon(
                            Icons.keyboard_arrow_right_sharp,
                            color: enable ? iconColor : disableTextColor,
                            size: iconSize,
                          ),
                          onPressed: onNavigationPressed,
                        )
                      : null,
                  border: const UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                )),
          ]),
        ),
      ),
    );
  }

  Widget buildTitle() {
    return Padding(
      padding: titlePadding ?? const EdgeInsets.only(top: 16, right: 16),
      child: Row(
        children: [
          Text(title,
              style: titleStyle),
          SizedBox(
            width: titleStarSpacing ?? 2,
          ),
          if(required)
            Text(
              '*',
              style: TextStyle(color: enable ? Colors.red : disableTextColor),
            )
        ],
      ),
    );
  }
}
