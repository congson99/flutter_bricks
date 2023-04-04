import 'package:flutter/material.dart';

import 'base_button.dart';

class ButtonPackage {
  static const Color defaultdisableBackgroundColor = Color(0xffd9d9d9);
  static const Color defaultdisableTextColor = Color(0xff666666);

  Widget primary({
    required VoidCallback onPressed,
    required String title,
    bool isActive = true,
    bool isFixedWidth = false,
    bool isExpandedContent = false,
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
      content: title,
      preIconUrl: preIconUrl,
      iconSize: iconSize,
      isDirection: isDirection,
      isFixedWidth: isFixedWidth,
      isExpandedContent: isExpandedContent,
      buttonHeight: buttonHeight,
      backgroundColor: backgroundColor,
      contentColor: textColor,
      disableBackgroundColor: disableBackgroundColor,
      disableContentColor: disableTextColor,
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
      content: title,
      preIconUrl: preIconUrl,
      iconSize: iconSize,
      isDirection: isDirection,
      isFixedWidth: isFixedWidth,
      isExpandedContent: isExpanedContent,
      buttonHeight: buttonHeight,
      backgroundColor: Colors.transparent,
      contentColor: textColor,
      isActive: isActive,
      disableBackgroundColor: disableBackgroundColor,
      disableContentColor: disableTextColor,
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
      content: title,
      preIconUrl: preIconUrl,
      iconSize: iconSize,
      isActive: isActive,
      isFixedWidth: true,
      isExpandedContent: isExpanedContent,
      contentColor: Colors.blue,
      textSize: textSize,
      textFamily: textFamily,
      textWeight: textWeight,
      disableBackgroundColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      disableContentColor: disableTextColor,
      betweenItemSpacing: betweenItemSpacing,
    );
  }
}
