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
    TextStyle? textStyle,
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
      textStyle: textStyle,
      isActive: isActive,
      boxShadow: boxShadow,
      borderRadius: borderRadius,
    );
  }

  @override
  Widget secondary({
    required VoidCallback onPressed,
    required String title,
    Color textColor = Colors.blue,
    bool isActive = true,
    bool isFixedWidth = false,
    Color disableBackgroundColor = ButtonPackage.defaultdisableBackgroundColor,
    Color disableTextColor = ButtonPackage.defaultdisableTextColor,
    TextStyle? textStyle,
    String? preIconUrl,
    double iconSize = 32,
    bool isDirection = false,
    double buttonHeight = 40,
    double borderRadius = 0,
    double borderWidth = 1,
    Color? borderColor,
  }) {
    return BaseButton(
        onPressed: onPressed,
        title: title,
        preIconUrl: preIconUrl,
        iconSize: iconSize,
        isDirection: isDirection,
        isFixedWidth: isFixedWidth,
        buttonHeight: buttonHeight,
        backgroundColor: Colors.transparent,
        textColor: textColor,
        isActive: isActive,
        disableBackgroundColor: disableBackgroundColor,
        disableTextColor: disableTextColor,
        textStyle: textStyle,
        borderWidth: borderWidth,
        borderRadius: borderRadius,
        borderColor: borderColor);
  }

  @override
  Widget text({
    required VoidCallback onPressed,
    required String title,
    Color textColor = Colors.blue,
    TextStyle? textStyle,
    double iconSize = 32,
    bool isActive = true,
    bool isFixedWidth = false,
    String? preIconUrl,
    Color disableTextColor = ButtonPackage.defaultdisableTextColor,
  }) {
    return BaseButton(
      onPressed: onPressed,
      title: title,
      preIconUrl: preIconUrl,
      iconSize: iconSize,
      isActive: isActive,
      isFixedWidth: isFixedWidth,
      textColor: Colors.blue,
      textStyle: textStyle,
      disableBackgroundColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      disableTextColor: disableTextColor,
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
    this.textStyle,
    this.iconSize = 32,
    this.buttonHeight = 40,
    this.borderRadius = 0,
    this.borderWidth,
    this.borderColor,
    this.isDirection = false,
    this.boxShadow,
    this.isFixedWidth = false,
    this.isExpanedContent = false,
  })  : assert(iconSize <= buttonHeight * 0.8),
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
  final TextStyle? textStyle;
  final double? borderRadius;
  final double? borderWidth;
  final Color? borderColor;
  final bool isDirection;
  final List<BoxShadow>? boxShadow;
  final bool isFixedWidth;
  final bool isExpanedContent;

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
        child: Row(
                mainAxisAlignment: isExpanedContent ? MainAxisAlignment.spaceBetween: MainAxisAlignment.center,
                mainAxisSize: !isFixedWidth ? MainAxisSize.max : MainAxisSize.min,
                children: [
                  preIconUrl != null ?
                    _split(preIconUrl!) == "svg"
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
                          ) : ( !isFixedWidth ? Container(width: iconSize) : Container()),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(title,
                          style: textStyle ??
                              TextStyle(
                                  fontSize: 18,
                                  color:
                                      isActive ? textColor : disableTextColor,
                                  fontWeight: FontWeight.w500))),
                  isDirection ?
                    Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: isActive ? textColor : disableTextColor,
                        size: iconSize,
                      ),
                    ): (!isFixedWidth ? Container(width: iconSize,) : Container())
                ],
              ),
      ),
    );
  }
}

String _split(String url) {
  final split = url.split('.');
  return split.last;
}

