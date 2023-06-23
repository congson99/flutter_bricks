import 'package:bricks/data/model/brick.dart';
import 'package:bricks/presentation/widget/app_bar_widget.dart';
import 'package:bricks/util/style/base_text_style.dart';
import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({Key? key, required this.brick}) : super(key: key);

  final Brick brick;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarWidget(title: brick.name, demoPage: brick.demoPage),
          Expanded(
              child: Center(
            child: Text("Not have Demo Page for this brick",
                style: BaseTextStyle.body()),
          )),
        ],
      ),
    );
  }
}
