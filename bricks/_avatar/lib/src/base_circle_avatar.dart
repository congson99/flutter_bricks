import 'package:flutter/material.dart';

const double _defaultSize = 64;

class BaseCircleAvatar extends StatelessWidget {
  const BaseCircleAvatar({
    Key? key,
    this.image,
    this.networkPath,
    this.size,
    this.name,
    this.backgroundColor,
    this.textStyle,
    this.border,
  })  : assert(image == null || networkPath == null),
        super(key: key);

  final Image? image;
  final String? networkPath;
  final double? size;
  final String? name;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    final finalSize = size ?? _defaultSize;
    return Container(
        height: finalSize,
        width: finalSize,
        decoration: BoxDecoration(
            color: backgroundColor ?? Colors.grey.shade300,
            shape: BoxShape.circle,
            border:
                border ?? Border.all(color: Colors.grey.shade300, width: 0.5)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            if (networkPath == null && image == null)
              Text(_createNameKey(name ?? ""),
                  style: textStyle ??
                      TextStyle(fontSize: finalSize / 3, color: Colors.black)),
            if (networkPath != null)
              SizedBox(
                  height: finalSize,
                  width: finalSize,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(finalSize),
                      child: Image.network(networkPath!, fit: BoxFit.cover))),
            if (image != null)
              CircleAvatar(radius: finalSize, foregroundImage: image?.image)
          ],
        ));
  }
}

String _createNameKey(String name) {
  if (name.isEmpty) return "";
  String result = "";
  if (name[0] != " ") result = name[0];
  for (int i = 0; i < name.length - 1; i++) {
    if (name[i] == " " && name[i + 1] != " ") result += name[i + 1];
  }
  if (result.length > 2) result = result.substring(0, 2);
  return result.toUpperCase();
}
