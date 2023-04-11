import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:path/path.dart' as path;

class CommonBaseTextfield extends StatelessWidget {
  const CommonBaseTextfield({
    super.key,
    required this.onChanged,
    this.onSubmit,
    this.isSearch = false,
    this.title,
    this.hintText,
    this.errorText,
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
    this.hintStyle,
    this.textAlign = TextAlign.start,
    this.textAlignVertical = TextAlignVertical.center,
    this.textInputAction,
    this.onSuffixIconTap,
    this.onPrefixIconTap,
    this.prefixIconPath,
    this.suffixIconPath,
    this.iconSize,
    this.shadow,
    this.textInputType,
    this.required = false,
    this.errorStyle,
    this.titleStyle,
    required this.disableTextColor,
    required this.disableBackgroundColor,
    this.iconColor,
    this.errorBorderColor = Colors.red,
    this.textColor = Colors.black,
  });

  final bool isSearch;

  final ValueChanged<String> onChanged;
  final ValueChanged<String>? onSubmit;
  final String? title;
  final String? hintText;
  final String? errorText;
  final Color errorBorderColor;
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
  final TextStyle? hintStyle;
  final TextStyle? errorStyle;
  final TextStyle? titleStyle;
  final TextAlign textAlign;
  final TextAlignVertical textAlignVertical;
  final TextInputAction? textInputAction;
  final VoidCallback? onSuffixIconTap;
  final VoidCallback? onPrefixIconTap;
  final String? prefixIconPath;
  final String? suffixIconPath;
  final double? iconSize;
  final Color? iconColor;
  final Color textColor;
  final List<BoxShadow>? shadow;
  final TextInputType? textInputType;
  final bool required;
  final Color disableTextColor;
  final Color disableBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
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
              style: textStyle.copyWith(color: textColor),
              decoration: InputDecoration(
                filled: true,
                fillColor: enable
                    ? (backgroundColor ?? Colors.transparent)
                    : (disableBackgroundColor),
                hintStyle: hintStyle,
                hintText: hintText,
                contentPadding: contentPadding ??
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                enabledBorder: isSearch
                    ? OutlineInputBorder(
                        borderRadius: borderRadius ?? BorderRadius.circular(12),
                        borderSide: BorderSide.none)
                    : OutlineInputBorder(
                        borderRadius: borderRadius ?? BorderRadius.circular(12),
                        borderSide: BorderSide(
                            color: Colors.transparent,
                            width: focusBorderWidth ?? 1)),
                disabledBorder: isSearch
                    ? OutlineInputBorder(
                        borderRadius: borderRadius ?? BorderRadius.circular(12),
                        borderSide: BorderSide.none)
                    : OutlineInputBorder(
                        borderRadius: borderRadius ?? BorderRadius.circular(12),
                        borderSide:
                            const BorderSide(color: Colors.transparent)),
                focusedBorder: isSearch
                    ? OutlineInputBorder(
                        borderRadius: borderRadius ?? BorderRadius.circular(12),
                        borderSide: BorderSide.none)
                    : OutlineInputBorder(
                        borderSide: BorderSide(
                            color: errorText != null
                                ? errorBorderColor
                                : focusBorderColor,
                            width: focusBorderWidth ?? 1),
                        borderRadius:
                            borderRadius ?? BorderRadius.circular(12)),
                prefixIcon: buildIcon(prefixIconPath, onPrefixIconTap),
                suffixIcon: buildIcon(suffixIconPath, onSuffixIconTap),
              )),
        ),
        buildErrorText(),
      ],
    );
  }

  Widget buildTitle() {
    if (title != null) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: RichText(
            text: TextSpan(
                text: title,
                style: titleStyle!
                    .copyWith(color: enable ? textColor : disableTextColor),
                children: const [
                  TextSpan(text: '  *', style: TextStyle(color: Colors.red))
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
            style: enable
                ? errorStyle
                : errorStyle!.copyWith(color: disableTextColor),
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
