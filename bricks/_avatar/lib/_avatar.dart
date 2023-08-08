import 'package:_avatar/src/base_circle_avatar.dart';
import 'package:flutter/material.dart';

class AvatarBrick {
  static circle(
          {Image? image,
          String? networkPath,
          double? size,
          String? name,
          Color? backgroundColor,
          TextStyle? textStyle,
          BoxBorder? border}) =>
      BaseCircleAvatar(
        image: image,
        networkPath: networkPath,
        size: size,
        name: name ?? "",
        backgroundColor: backgroundColor,
        textStyle: textStyle,
        border: border,
      );
}
