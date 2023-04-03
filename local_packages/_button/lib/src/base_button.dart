import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:path/path.dart' as path;

import 'button_package.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({
    Key? key,
    required this.onPressed,
    required this.content,
    this.preIconUrl,
    this.backgroundColor,
    this.textColor,
    this.isActive = true,
    this.disableBackgroundColor = ButtonPackage.defaultdisableBackgroundColor,
    this.disableTextColor = ButtonPackage.defaultdisableTextColor,
    this.iconSize = 32,
    this.buttonHeight = 40,
    this.borderRadius = 0,
    this.borderWidth = 1,
    this.borderColor,
    this.isDirection = false,
    this.boxShadow,
    this.isFixedWidth = false,
    this.isExpandedContent = false,
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
  final String content;
  final String? preIconUrl;
  final double iconSize;
  final double buttonHeight;
  final Color? backgroundColor;
  final Color? textColor;
  final Color disableBackgroundColor;
  final Color disableTextColor;
  final bool isActive;
  final double borderRadius;
  final double borderWidth;
  final Color? borderColor;
  final bool isDirection;
  final List<BoxShadow>? boxShadow;
  final bool isFixedWidth;
  final bool isExpandedContent;
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
          shape: (RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              side: BorderSide(
                  color: borderColor ?? textColor!, width: borderWidth))),
          backgroundColor: isActive ? backgroundColor : disableBackgroundColor,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: paddingButton),
          child: Row(
            mainAxisAlignment: isExpandedContent
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            mainAxisSize: !isFixedWidth ? MainAxisSize.max : MainAxisSize.min,
            children: [
              buildPreIcon(),
              SizedBox(
                  width: isExpandedContent
                      ? 0
                      : (preIconUrl != null
                          ? betweenItemSpacing
                          : (isFixedWidth ? 0 : betweenItemSpacing))),
              Text(content,
                  style: TextStyle(
                      fontSize: textSize,
                      color: isActive ? textColor : disableTextColor,
                      fontFamily: textFamily,
                      fontWeight: textWeight ?? FontWeight.w500)),
              SizedBox(
                  width: isExpandedContent
                      ? 0
                      : (isDirection
                          ? betweenItemSpacing
                          : (isFixedWidth ? 0 : betweenItemSpacing))),
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

  Widget buildPreIcon() {
    if (preIconUrl != null) {
      return (path.extension(preIconUrl!) == "svg"
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
            ));
    }
    if (!isFixedWidth) return Container(width: iconSize);
    return const SizedBox.shrink();
  }
}
