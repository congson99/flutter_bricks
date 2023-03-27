import 'dart:math';

import 'package:_tinder_swipe/src/presentations/features_impl.dart';
import 'package:flutter/material.dart';

class TinderSwipePackageDemoPage extends StatefulWidget {
  const TinderSwipePackageDemoPage({Key? key}) : super(key: key);

  @override
  State<TinderSwipePackageDemoPage> createState() =>
      _TinderSwipePackageDemoPageState();
}

class _TinderSwipePackageDemoPageState
    extends State<TinderSwipePackageDemoPage> {
  double angle = 0;
  Offset position = Offset.zero;
  bool isDragging = false;
  final double limitDegree = 30.0;
  double unlikeRatio = 0.0;
  double likeRatio = 0.0;

  List<String> images = [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Long_March_2D_launching_VRSS-1.jpg/330px-Long_March_2D_launching_VRSS-1.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/%E9%95%BF%E5%BE%81%E4%BA%94%E5%8F%B7%E9%81%A5%E4%BA%8C%E7%81%AB%E7%AE%AD%E8%BD%AC%E5%9C%BA.jpg/330px-%E9%95%BF%E5%BE%81%E4%BA%94%E5%8F%B7%E9%81%A5%E4%BA%8C%E7%81%AB%E7%AE%AD%E8%BD%AC%E5%9C%BA.jpg",
    "https://photo-cms-tpo.epicdn.me/w890/Uploaded/2023/lxwptqjwq/2014_02_25/cauLB2_SXNT.jpg",
    "https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2020/02/vinh-ha-long-1.jpg"
  ];

  List<Widget> cards = [];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        cards = List.generate(images.length, (index) {
          return Container(
            width: MediaQuery.of(context).size.width - 200,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(images[index]), fit: BoxFit.cover)),
          );
        });
        TinderSwipePackage.children = cards;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tinder Swipe"),
      ),
      body: Stack(
        children: List.generate(cards.length, (index) {
          if (index == cards.length - 1) {
            return Stack(
              children: [
                _swipeCard(index: index, image: images[index]),
                _buttonArea(index: index),
              ],
            );
          }
          return _card(index: index, image: images[index]);
        }),
      ),
    );
  }

  Widget _buttonArea({required int index}) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).padding.bottom, horizontal: 32.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () async {
                for (int i = 0; i < limitDegree * 2; i++) {
                  await Future.delayed(const Duration(milliseconds: 5), () {
                    setState(() {
                      position += const Offset(-5, 0);
                      angle = (limitDegree *
                              position.dx /
                              MediaQuery.of(context).size.width) *
                          pi;
                      double ratio = angle.abs() / (limitDegree * 2);
                      unlikeRatio = ratio > 1 ? 1 : ratio;
                    });
                  });
                  if (unlikeRatio == 1) {
                    cards.removeAt(index);
                    unlikeRatio = 0;
                    position = Offset.zero;
                    angle = 0.0;
                    break;
                  }
                }
              },
              child: Container(
                width: 64,
                height: 64,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.purple),
                child: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ),
            GestureDetector(
              onTap: () async {
                for (int i = 0; i < limitDegree * 2; i++) {
                  await Future.delayed(const Duration(milliseconds: 5), () {
                    setState(() {
                      position += const Offset(5, 0);
                      angle = (limitDegree *
                              position.dx /
                              MediaQuery.of(context).size.width) *
                          pi;
                      double ratio = angle.abs() / (limitDegree * 2);
                      likeRatio = ratio > 1 ? 1 : ratio;
                    });
                  });
                  if (likeRatio == 1) {
                    cards.removeAt(index);
                    likeRatio = 0;
                    position = Offset.zero;
                    angle = 0.0;
                    break;
                  }
                }
              },
              child: Container(
                width: 64,
                height: 64,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.red),
                child: const Icon(
                  Icons.favorite_outline,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _swipeCard({required int index, required String image}) {
    return SizedBox.expand(
      child: GestureDetector(
        onHorizontalDragStart: (details) {
          setState(() {
            isDragging = true;
          });
        },
        onHorizontalDragUpdate: (details) {
          setState(() {
            position += details.delta;
            angle = (limitDegree *
                    position.dx /
                    MediaQuery.of(context).size.width) *
                pi;
            print(angle);
            double ratio = angle.abs() / (limitDegree * 2);
            print("ratio $ratio");
            if (angle < 0) {
              unlikeRatio = ratio > 1 ? 1 : ratio;
            } else {
              likeRatio = ratio > 1 ? 1 : ratio;
            }
          });
        },
        onHorizontalDragEnd: (details) {
          setState(() {
            if (angle > limitDegree * 2 || angle < -limitDegree * 2) {
              cards.removeAt(index);
            }
            isDragging = false;
            position = Offset.zero;
            angle = 0;
            unlikeRatio = 0.0;
            likeRatio = 0.0;
          });
        },
        child: LayoutBuilder(
          builder: (context, constraints) {
            int milliseconds = isDragging ? 0 : 0;
            final center = constraints.smallest.center(Offset.zero);
            final rotateMatrix4 = Matrix4.identity()
              ..translate(center.dx, center.dy)
              ..rotateZ(angle / 180)
              ..translate(-center.dx, -center.dy);
            double width = MediaQuery.of(context).size.width;
            double height = MediaQuery.of(context).size.height;
            print("width $width");
            return AnimatedContainer(
              duration: Duration(milliseconds: milliseconds),
              curve: Curves.easeInOut,
              transform: rotateMatrix4..translate(position.dx, position.dy),
              child: Stack(
                children: [
                  _card(index: index, image: image),
                  Align(
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        Container(
                          width: width,
                          height: height,
                          color: Colors.purple.withOpacity(unlikeRatio),
                        ),
                        Container(
                          width: width,
                          height: height,
                          color: Colors.red.withOpacity(likeRatio),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _card({required int index, required String image}) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width + 200,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
