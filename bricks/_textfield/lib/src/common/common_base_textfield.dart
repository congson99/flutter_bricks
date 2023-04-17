import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:path/path.dart' as path;

class CommonBaseTextfield extends StatelessWidget {
  const CommonBaseTextfield({
    super.key,
    this.onChanged,
    this.onSubmit,
    this.initialValue,
    this.textEditingController,
    this.focusNode,
    this.autoFocus,
    this.enable = true,
    this.isRequired = false,
    this.label,
    this.hintText,
    this.errorText,
    required this.textStyle,
    required this.labelTextStyle,
    required this.hintTextStyle,
    required this.errorTextStyle,
    required this.focusBorderColor,
    required this.errorBorderColor,
    required this.enableBorderColor,
    required this.disableBorderColor,
    required this.backgroundColor,
    required this.disableTextColor,
    required this.disableBackgroundColor,
    this.isObscured,
    this.textAlign,
    this.textAlignVertical,
    this.textInputAction,
    this.textInputType,
    this.contentPadding,
    this.borderRadius,
    this.borderWidth,
    this.shadow,
    this.textCapitalization,
    this.maxLength,
    this.maxLines,
    this.readOnly,
    this.prefixIconPath,
    this.suffixIconPath,
    this.onSuffixIconTap,
    this.onPrefixIconTap,
    this.iconSize,
    this.iconColor,
  });

  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmit;
  final String? initialValue;
  final TextEditingController? textEditingController;
  final FocusNode? focusNode;
  final bool? autoFocus;
  final bool? enable;
  final bool? isRequired;
  final String? label;
  final String? hintText;
  final String? errorText;
  final TextStyle textStyle;
  final TextStyle labelTextStyle;
  final TextStyle hintTextStyle;
  final TextStyle errorTextStyle;
  final Color focusBorderColor;
  final Color errorBorderColor;
  final Color enableBorderColor;
  final Color disableBorderColor;
  final Color backgroundColor;
  final Color disableTextColor;
  final Color disableBackgroundColor;
  final bool? isObscured;
  final TextAlign? textAlign;
  final TextAlignVertical? textAlignVertical;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final EdgeInsets? contentPadding;
  final BorderRadius? borderRadius;
  final double? borderWidth;
  final List<BoxShadow>? shadow;
  final TextCapitalization? textCapitalization;
  final int? maxLength;
  final int? maxLines;
  final bool? readOnly;
  final String? prefixIconPath;
  final String? suffixIconPath;
  final VoidCallback? onSuffixIconTap;
  final VoidCallback? onPrefixIconTap;
  final double? iconSize;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildTitle(),
        Container(
          decoration: BoxDecoration(boxShadow: shadow),
          child: TextFormField(
              enabled: enable,
              onChanged: onChanged,
              onFieldSubmitted: onSubmit,
              initialValue: initialValue,
              controller: textEditingController,
              textCapitalization: textCapitalization ?? TextCapitalization.none,
              autofocus: autoFocus ?? false,
              maxLength: maxLength,
              maxLines: maxLines,
              obscureText: isObscured ?? false,
              focusNode: focusNode,
              readOnly: readOnly ?? false,
              textAlign: textAlign ?? TextAlign.start,
              keyboardType: textInputType,
              textAlignVertical: textAlignVertical,
              textInputAction: textInputAction,
              style: textStyle,
              decoration: InputDecoration(
                filled: true,
                fillColor: (enable != false)
                    ? backgroundColor
                    : disableBackgroundColor,
                hintStyle: hintTextStyle,
                hintText: hintText,
                contentPadding: contentPadding ??
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                enabledBorder: OutlineInputBorder(
                    borderRadius: borderRadius ?? BorderRadius.zero,
                    borderSide: BorderSide(
                        color: (errorText != null)
                            ? errorBorderColor
                            : enableBorderColor,
                        width: borderWidth ?? 1)),
                disabledBorder: OutlineInputBorder(
                    borderRadius: borderRadius ?? BorderRadius.zero,
                    borderSide: BorderSide(
                        color: disableBorderColor, width: borderWidth ?? 1)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: borderRadius ?? BorderRadius.zero,
                    borderSide: BorderSide(
                        color: (errorText != null)
                            ? errorBorderColor
                            : focusBorderColor,
                        width: borderWidth ?? 1)),
                prefixIcon: buildIcon(prefixIconPath, onPrefixIconTap),
                suffixIcon: buildIcon(suffixIconPath, onSuffixIconTap),
              )),
        ),
        buildErrorText(),
      ],
    );
  }

  Widget buildTitle() {
    if (label != null) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: RichText(
            text: TextSpan(
                text: label,
                style: labelTextStyle.copyWith(
                    color: (enable == false) ? disableTextColor : null),
                children: [
                  if (isRequired == true)
                    const TextSpan(
                        text: ' *', style: TextStyle(color: Colors.red))
                ]),
          ),
        ),
      );
    }
    return const SizedBox.shrink();
  }

  Widget buildErrorText() {
    if (errorText != null) {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            errorText!,
            style: errorTextStyle.copyWith(
                color: (enable == false) ? disableTextColor : null),
          ),
        ),
      );
    }
    return const SizedBox.shrink();
  }

  Widget buildIcon(String? url, VoidCallback? onPressed) {
    if (url != null) {
      return IconButton(
        icon: path.extension(url) == ".svg"
            ? SvgPicture.asset(
                url,
                color: iconColor,
                height: iconSize,
                width: iconSize,
                fit: BoxFit.contain,
              )
            : Image.asset(
                url,
                height: iconSize,
                color: iconColor,
                width: iconSize,
                fit: BoxFit.contain,
              ),
        onPressed: onPressed,
      );
    }
    return const SizedBox.shrink();
  }
}
