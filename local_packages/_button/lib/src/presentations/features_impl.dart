import 'package:flutter/material.dart';
import 'i_features.dart';

class ButtonPackage implements ButtonPackageInterface {
  @override
  Widget primary(
      {required VoidCallback onPressed,
      required String title,
      String? preIconUrl,
      String? afterIconUrl}) {
    return BaseButton(
      onPressed: onPressed,
      title: title,
      preIconUrl: preIconUrl,
      afterIconUrl: afterIconUrl,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
    );
  }

  @override
  Widget secondary(
      {required VoidCallback onPressed,
      required String title,
      String? preIconUrl,
      String? afterIconUrl}) {
    return BaseButton(
      onPressed: onPressed,
      title: title,
      preIconUrl: preIconUrl,
      afterIconUrl: afterIconUrl,
      backgroundColor: Colors.white,
      textColor: Colors.blue,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: Colors.blue, width: 1)),
    );
  }

  @override
  Widget text(
      {required VoidCallback onPressed,
      required String title,
      String? preIconUrl,
      String? afterIconUrl}) {
    return BaseButton(
      onPressed: onPressed,
      title: title,
      preIconUrl: preIconUrl,
      afterIconUrl: afterIconUrl,
      textColor: Colors.blue,
    );
  }
}

class BaseButton extends StatelessWidget {
  const BaseButton({
    Key? key,
    required this.onPressed,
    required this.title,
    this.preIconUrl,
    this.afterIconUrl,
    this.backgroundColor,
    this.textColor,
    this.shape,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String title;
  final String? preIconUrl;
  final String? afterIconUrl;
  final Color? backgroundColor;
  final Color? textColor;
  final RoundedRectangleBorder? shape;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: shape ??
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: backgroundColor,
          minimumSize: const Size.fromHeight(48),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (preIconUrl != null)
              Image.asset(
                preIconUrl!,
                color: textColor,
              ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(title,
                    style: TextStyle(
                        fontSize: 18,
                        color: textColor ?? Colors.black,
                        fontWeight: FontWeight.w500))),
            if (afterIconUrl != null)
              Image.asset(
                afterIconUrl!,
                color: textColor,
              ),
          ],
        ),
      ),
    );
  }
}
