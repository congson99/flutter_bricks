import 'package:flutter/material.dart';
import 'i_features.dart';
import 'package:flutter_svg/svg.dart';

class ButtonPackage implements ButtonPackageInterface {
  static const Color defaultdisableBackgroundColor = Color(0xffd9d9d9);
  static const Color defaultdisableTextColor = Color(0xff666666);

  @override
  Widget primary({
    required VoidCallback onPressed,
    required String title,
    bool isActive = true,
    bool isFixedWidth = false,
    bool isExpanedContent = false,
    bool isDirection = false,
    double iconSize = 32,
    Color? backgroundColor = Colors.blue,
    Color? textColor = Colors.white,
    Color disableBackgroundColor = ButtonPackage.defaultdisableBackgroundColor,
    Color disableTextColor = ButtonPackage.defaultdisableTextColor,
    FontWeight? textWeight,
    double textSize = 18,
    String? textFamily,
    double paddingButton = 0,
    double betweenItemSpacing = 0,
    double buttonHeight = 40,
    String? preIconUrl,
    List<BoxShadow>? boxShadow,
    double borderRadius = 0,
  }) {
    return BaseButton(
      onPressed: onPressed,
      title: title,
      preIconUrl: preIconUrl,
      iconSize: iconSize,
      isDirection: isDirection,
      isFixedWidth: isFixedWidth,
      isExpanedContent: isExpanedContent,
      buttonHeight: buttonHeight,
      backgroundColor: backgroundColor,
      textColor: textColor,
      disableBackgroundColor: disableBackgroundColor,
      disableTextColor: disableTextColor,
      textSize: textSize,
      textFamily: textFamily,
      textWeight: textWeight,
      isActive: isActive,
      boxShadow: boxShadow,
      borderRadius: borderRadius,
      paddingButton: paddingButton,
      betweenItemSpacing: betweenItemSpacing,
    );
  }

  @override
  Widget secondary({
    required VoidCallback onPressed,
    required String title,
    Color textColor = Colors.blue,
    bool isActive = true,
    bool isFixedWidth = false,
    bool isExpanedContent = false,
    Color disableBackgroundColor = ButtonPackage.defaultdisableBackgroundColor,
    Color disableTextColor = ButtonPackage.defaultdisableTextColor,
    FontWeight? textWeight,
    double textSize = 18,
    String? textFamily,
    String? preIconUrl,
    double iconSize = 32,
    bool isDirection = false,
    double buttonHeight = 40,
    double borderRadius = 0,
    double borderWidth = 1,
    Color? borderColor,
    double paddingButton = 0,
    double betweenItemSpacing = 0,
  }) {
    return BaseButton(
      onPressed: onPressed,
      title: title,
      preIconUrl: preIconUrl,
      iconSize: iconSize,
      isDirection: isDirection,
      isFixedWidth: isFixedWidth,
      isExpanedContent: isExpanedContent,
      buttonHeight: buttonHeight,
      backgroundColor: Colors.transparent,
      textColor: textColor,
      isActive: isActive,
      disableBackgroundColor: disableBackgroundColor,
      disableTextColor: disableTextColor,
      textSize: textSize,
      textFamily: textFamily,
      textWeight: textWeight,
      borderWidth: borderWidth,
      borderRadius: borderRadius,
      borderColor: borderColor,
      paddingButton: paddingButton,
      betweenItemSpacing: betweenItemSpacing,
    );
  }

  @override
  Widget text({
    required VoidCallback onPressed,
    required String title,
    Color textColor = Colors.blue,
    FontWeight? textWeight,
    double textSize = 18,
    String? textFamily,
    double iconSize = 32,
    bool isActive = true,
    bool isExpanedContent = false,
    String? preIconUrl,
    Color disableTextColor = ButtonPackage.defaultdisableTextColor,
    double betweenItemSpacing = 0,
  }) {
    return BaseButton(
      onPressed: onPressed,
      title: title,
      preIconUrl: preIconUrl,
      iconSize: iconSize,
      isActive: isActive,
      isFixedWidth: true,
      isExpanedContent: isExpanedContent,
      textColor: Colors.blue,
      textSize: textSize,
      textFamily: textFamily,
      textWeight: textWeight,
      disableBackgroundColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      disableTextColor: disableTextColor,
      betweenItemSpacing: betweenItemSpacing,
    );
  }
}

class BaseButton extends StatelessWidget {
  const BaseButton({
    Key? key,
    required this.onPressed,
    required this.title,
    this.preIconUrl,
    this.backgroundColor,
    this.textColor,
    this.isActive = true,
    this.disableBackgroundColor = ButtonPackage.defaultdisableBackgroundColor,
    this.disableTextColor = ButtonPackage.defaultdisableTextColor,
    this.iconSize = 32,
    this.buttonHeight = 40,
    this.borderRadius = 0,
    this.borderWidth,
    this.borderColor,
    this.isDirection = false,
    this.boxShadow,
    this.isFixedWidth = false,
    this.isExpanedContent = false,
    this.betweenItemSpacing = 0,
    this.paddingButton = 0,
    this.textWeight,
    this.textSize = 18,
    this.textFamily,
  })  : assert(iconSize <= buttonHeight * 0.8),
        assert(textSize <= buttonHeight * 0.6),
        assert(preIconUrl == null || isDirection == false),
        super(key: key);

  final VoidCallback onPressed;
  final String title;
  final String? preIconUrl;
  final double iconSize;
  final double buttonHeight;
  final Color? backgroundColor;
  final Color? textColor;
  final Color disableBackgroundColor;
  final Color disableTextColor;
  final bool isActive;
  final double? borderRadius;
  final double? borderWidth;
  final Color? borderColor;
  final bool isDirection;
  final List<BoxShadow>? boxShadow;
  final bool isFixedWidth;
  final bool isExpanedContent;
  final double betweenItemSpacing;
  final double paddingButton;
  final FontWeight? textWeight;
  final double textSize;
  final String? textFamily;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonHeight,
      decoration: BoxDecoration(
        boxShadow: boxShadow,
      ),
      child: TextButton(
        onPressed: isActive ? onPressed : null,
        style: TextButton.styleFrom(
          shape: isActive
              ? (borderWidth != null
                  ? RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(borderRadius!),
                      side: BorderSide(
                          color: borderColor ?? textColor!,
                          width: borderWidth!))
                  : null)
              : null,
          backgroundColor: isActive ? backgroundColor : disableBackgroundColor,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: paddingButton),
          child: Row(
            mainAxisAlignment: isExpanedContent
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            mainAxisSize: !isFixedWidth ? MainAxisSize.max : MainAxisSize.min,
            children: [
              preIconUrl != null
                  ? _split(preIconUrl!) == "svg"
                      ? SvgPicture.asset(
                          preIconUrl!,
                          color: isActive ? textColor : disableTextColor,
                          height: iconSize,
                        )
                      : Image.asset(
                          preIconUrl!,
                          color: isActive ? textColor : disableTextColor,
                          height: iconSize,
                          fit: BoxFit.fill,
                        )
                  : (!isFixedWidth ? Container(width: iconSize) : Container()),
              Padding(
                  padding: EdgeInsets.only(
                      left: isExpanedContent
                          ? 0
                          : (preIconUrl != null ? betweenItemSpacing : (isFixedWidth ? 0 : betweenItemSpacing)),
                      right: isExpanedContent
                          ? 0
                          : (isDirection ? betweenItemSpacing : (isFixedWidth ? 0 : betweenItemSpacing))),
                  child: Text(title,
                      style: TextStyle(
                          fontSize: textSize,
                          color: isActive ? textColor : disableTextColor,
                          fontFamily: textFamily,
                          fontWeight: textWeight ?? FontWeight.w500))),
              isDirection
                  ? Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: isActive ? textColor : disableTextColor,
                      size: iconSize,
                    )
                  : (!isFixedWidth
                      ? Container(
                          width: iconSize,
                        )
                      : Container())
            ],
          ),
        ),
      ),
    );
  }
}

String _split(String url) {
  final split = url.split('.');
  return split.last;
}
