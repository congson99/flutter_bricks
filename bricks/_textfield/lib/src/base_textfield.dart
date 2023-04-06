import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:path/path.dart' as path;

class BaseTextfield extends StatelessWidget {

  const BaseTextfield({
    super.key,
    required this.onChanged,
    this.onSubmit,
    required this.title,
    this.hintText,
    required this.errorText,
    this.initialValue,
    this.isObscured = false,
    this.enable = true,
    this.contentPadding,
    this.focusNode,
    this.borderRadius,
    this.focusBorderWidth,
    this.focusBorderColor = Colors.green,
    this.textEditingController,
    this.textCapitalization = TextCapitalization.none,
    this.autoFocus = false,
    this.maxLength,
    this.maxLines,
    this.backgroundColor,
    this.readOnly = false,
    required this.textStyle,
    required this.hintStyle,
    this.textAlign = TextAlign.start,
    this.textAlignVertical = TextAlignVertical.center,
    this.textInputAction,
    this.onSuffixIconTap,
    this.onPrefixIconTap,
    this.prefixIconPath,
    this.suffixIconPath,
    this.iconSize,
    this.shadow,
    this.focusShadow,
    this.textInputType,
    this.verticalItemSpacing = 8,
    this.textfieldWidth,
    required this.errorStyle,
    required this.titleStyle,
    required this.disableTextColor,
    required this.disableBackgroundColor,
    this.iconColor,
    this.errorBorderColor = Colors.red,
    this.isValid = true,
    this.errorShadow,
  });

  final ValueChanged<String> onChanged;
  final ValueChanged<String>? onSubmit;
  final String title;
  final String? hintText;
  final String errorText;
  final Color errorBorderColor;
  final List<BoxShadow>? errorShadow;
  final bool isValid;
  final String? initialValue;
  final bool isObscured;
  final bool enable;
  final EdgeInsets? contentPadding;
  final FocusNode? focusNode;
  final BorderRadius? borderRadius;
  final double? focusBorderWidth;
  final Color focusBorderColor;
  final TextEditingController? textEditingController;
  final TextCapitalization textCapitalization;
  final bool autoFocus;
  final int? maxLength;
  final int? maxLines;
  final Color? backgroundColor;
  final bool readOnly;
  final TextStyle textStyle;
  final TextStyle hintStyle;
  final TextStyle errorStyle;
  final TextStyle titleStyle;
  final TextAlign textAlign;
  final TextAlignVertical textAlignVertical;
  final TextInputAction? textInputAction;
  final VoidCallback? onSuffixIconTap;
  final VoidCallback? onPrefixIconTap;
  final String? prefixIconPath;
  final String? suffixIconPath;
  final double? iconSize;
  final Color? iconColor;
  final List<BoxShadow>? shadow;
  final List<BoxShadow>? focusShadow;
  final TextInputType? textInputType;
  final double verticalItemSpacing;
  final double? textfieldWidth;
  final Color disableTextColor;
  final Color disableBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        buildTitle(),
        Container(
          margin: EdgeInsets.symmetric(vertical: verticalItemSpacing),
          decoration: BoxDecoration(
              boxShadow: enable
                  ? ((focusNode != null
                      ? (focusNode!.hasFocus
                          ? (isValid ? focusShadow : errorShadow)
                          : shadow)
                      : shadow))
                  : null),
          width: textfieldWidth,
          child: TextFormField(
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
              style: textStyle,
              decoration: InputDecoration(
                filled: true,
                fillColor: enable
                    ? (backgroundColor ?? Colors.white)
                    : (disableBackgroundColor),
                hintStyle: hintStyle,
                hintText: hintText,
                contentPadding: contentPadding ??
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                border: OutlineInputBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(16.0),
                  borderSide:
                      const BorderSide(style: BorderStyle.none, width: 0),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: isValid ? focusBorderColor : errorBorderColor,
                        width: focusBorderWidth ?? 1),
                    borderRadius: borderRadius ?? BorderRadius.circular(16)),
                prefixIcon: buildIcon(prefixIconPath),
                suffixIcon: buildIcon(suffixIconPath),
              )),
        ),
        buildErrorText(),
      ],
    );
  }

  Widget buildTitle() {
    return Row(
      children: [
        Text(title,
            style: enable
                ? titleStyle
                : titleStyle.copyWith(color: disableTextColor)),
        const SizedBox(
          width: 8,
        ),
        const Text(
          '*',
          style: TextStyle(color: Colors.red),
        )
      ],
    );
  }

  Widget buildErrorText() {
    if (!isValid && enable) {
      if (errorText != '') {
        return Align(
          alignment: Alignment.centerLeft,
          child: Text(
            errorText,
            style: enable
                ? errorStyle
                : errorStyle.copyWith(color: disableTextColor),
          ),
        );
      }
    }
    return const SizedBox.shrink();
  }

  Widget buildIcon(String? url) {
    if (url != null) {
      return IconButton(
        icon: path.extension(url) == ".svg"
            ? SvgPicture.asset(
                url,
                color: enable ? iconColor : disableTextColor,
                height: iconSize,
                width: iconSize,
                fit: BoxFit.contain,
              )
            : Image.asset(
                url,
                height: iconSize,
                color: enable ? iconColor : disableTextColor,
                width: iconSize,
                fit: BoxFit.contain,
              ),
        onPressed: onSuffixIconTap,
      );
    }
    return const SizedBox.shrink();
  }
}
