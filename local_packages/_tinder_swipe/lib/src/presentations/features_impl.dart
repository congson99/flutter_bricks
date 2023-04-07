import 'dart:math';

import 'package:flutter/cupertino.dart';

import 'i_features.dart';

class TinderSwipePackage extends TinderSwipeInterface {
  Offset position = Offset.zero;
  double angle = 0.0;
  double limitDegree = 45.0;
  bool isDragging = false;
  static List<Widget> children = [];

  @override
  Widget card(
      {required int index,
      required Widget child,
      required BuildContext context}) {
    return SingleChildScrollView(
      child: child,
    );
  }

  @override
  Widget swipeCard(
      {required int index,
      required Widget child,
      required BuildContext context}) {
    return SizedBox.expand(
      child: GestureDetector(
        onHorizontalDragStart: (details) {
          isDragging = true;
          print("start");
        },
        onHorizontalDragUpdate: (details) {
          position += details.delta;
          angle =
              (limitDegree * position.dx / MediaQuery.of(context).size.width) *
                  pi;
          print(angle);
        },
        onHorizontalDragEnd: (details) {
          if (angle > limitDegree * 2 || angle < -limitDegree * 2) {
            children.removeAt(index);
            print(children.length);
            print("remove");
          }
          isDragging = false;
          position = Offset.zero;
          angle = 0.0;
          print("end");
        },
        child: LayoutBuilder(
          builder: (context, constraints) {
            int milliseconds = isDragging ? 0 : 0;
            final center = constraints.smallest.center(Offset.zero);
            final rotateMatrix4 = Matrix4.identity()
              ..translate(center.dx, center.dy)
              ..rotateZ(angle / 180)
              ..translate(-center.dx, -center.dy);
            return AnimatedContainer(
                duration: Duration(milliseconds: milliseconds),
                curve: Curves.easeInOut,
                transform: rotateMatrix4..translate(position.dx, position.dy),
                child: card(index: index, child: child, context: context));
          },
        ),
      ),
    );
  }

  @override
  Widget swipeWidget(
      {required List<Widget> list,
      double? limitDegree = 45,
      required BuildContext context}) {
    this.limitDegree = limitDegree!;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: List.generate(children.length, (index) {
          if (index == children.length - 1) {
            return swipeCard(
                index: index, child: children[index], context: context);
          }
          return card(index: index, child: children[index], context: context);
        }),
      ),
    );
  }

  @override
  Widget buttonArea({required int index}) {
    // TODO: implement buttonArea
    throw UnimplementedError();
  }
}
