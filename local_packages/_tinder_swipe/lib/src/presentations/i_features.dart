import 'package:flutter/material.dart';

abstract class TinderSwipeInterface {
  Widget swipeWidget(
      {required List<Widget> list,
      required BuildContext context,
      double? limitDegree = 45});

  Widget swipeCard(
      {required int index,
      required Widget child,
      required BuildContext context});

  Widget card(
      {required int index,
      required Widget child,
      required BuildContext context});

  Widget buttonArea({required int index});
}
