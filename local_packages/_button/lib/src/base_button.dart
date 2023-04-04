import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:path/path.dart' as path;

class BaseButton extends StatelessWidget {
  const BaseButton({
    Key? key,
    required this.onPressed,
    required this.content,
    this.height = 48,
    required this.textStyle,
    this.textOverflow = TextOverflow.ellipsis,
    this.maxLines = 1,
    required this.contentColor,
    required this.backgroundColor,
    this.disable = false,
    required this.disableContentColor,
    required this.disableBackgroundColor,
    this.isBorder = false,
    this.borderRadius = 16,
    this.borderWidth = 1,
    this.borderColor,
    this.boxShadow,
    this.preIconUrl,
    this.iconSize = 24,
    this.isDirection = false,
    this.isFixedWidth = false,
    this.isExpandedContent = false,
    this.betweenItemSpacing = 8,
    this.horizontalPadding = 0,
    this.alignment = Alignment.center,
  })  : assert(content != ""),
        assert(height >= 32),
        assert(iconSize < height),
        assert(preIconUrl == null || isDirection == false),
        assert(alignment == Alignment.center ||
            alignment == Alignment.centerLeft ||
            alignment == Alignment.centerRight),
        assert(alignment != Alignment.centerLeft || preIconUrl == null),
        assert(alignment != Alignment.centerRight || isDirection == false),
        super(key: key);

  final VoidCallback onPressed;
  final String content;
  final double height;
  final TextStyle textStyle;
  final TextOverflow textOverflow;
  final int maxLines;
  final Color contentColor;
  final Color backgroundColor;
  final bool disable;
  final Color disableContentColor;
  final Color disableBackgroundColor;
  final bool isBorder;
  final double borderRadius;
  final double borderWidth;
  final Color? borderColor;
  final List<BoxShadow>? boxShadow;
  final String? preIconUrl;
  final double iconSize;
  final bool isDirection;
  final bool isFixedWidth;
  final bool isExpandedContent;
  final double betweenItemSpacing;
  final double horizontalPadding;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(boxShadow: disable ? null : boxShadow),
      child: TextButton(
        onPressed: disable ? null : onPressed,
        style: TextButton.styleFrom(
          shape: (RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              side: isBorder
                  ? BorderSide(
                      color: disable
                          ? disableContentColor
                          : (borderColor ?? contentColor),
                      width: borderWidth)
                  : BorderSide.none)),
          backgroundColor: disable ? disableBackgroundColor : backgroundColor,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Row(
            mainAxisAlignment: isExpandedContent
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            mainAxisSize: isFixedWidth ? MainAxisSize.min : MainAxisSize.max,
            children: [
              if (alignment != Alignment.centerLeft) buildPreIcon(),
              if (alignment != Alignment.centerLeft) buildPreFixSpacing(),
              if (isExpandedContent)
                Expanded(child: buildTextContent())
              else
                buildTextContent(),
              if (alignment != Alignment.centerRight) buildSufFixSpacing(),
              if (alignment != Alignment.centerRight) buildDirection()
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextContent() {
    return Text(content,
        overflow: textOverflow,
        maxLines: maxLines,
        textAlign: TextAlign.center,
        style: textStyle.copyWith(
            color: disable ? disableContentColor : contentColor));
  }

  Widget buildPreIcon() {
    if (preIconUrl != null) {
      return (path.extension(preIconUrl!) == ".svg"
          ? SvgPicture.asset(
              preIconUrl!,
              color: disable ? disableContentColor : contentColor,
              height: iconSize,
              width: iconSize,
              fit: BoxFit.contain,
            )
          : Image.asset(
              preIconUrl!,
              color: disable ? disableContentColor : contentColor,
              height: iconSize,
              width: iconSize,
              fit: BoxFit.contain,
            ));
    }
    if (!isFixedWidth && isExpandedContent) return SizedBox(width: iconSize);
    return const SizedBox.shrink();
  }

  Widget buildDirection() {
    if (isDirection) {
      return Icon(
        Icons.chevron_right,
        color: disable ? disableContentColor : contentColor,
        size: iconSize,
      );
    }
    if (!isFixedWidth && isExpandedContent) return SizedBox(width: iconSize);
    return const SizedBox.shrink();
  }

  Widget buildPreFixSpacing() {
    if (preIconUrl != null || (isFixedWidth == false && isDirection == true)) {
      return SizedBox(width: betweenItemSpacing);
    }
    return const SizedBox.shrink();
  }

  Widget buildSufFixSpacing() {
    if (isDirection || (isFixedWidth == false && preIconUrl != null)) {
      return SizedBox(width: betweenItemSpacing);
    }
    return const SizedBox.shrink();
  }
}
