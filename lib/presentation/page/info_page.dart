import 'package:bricks/data/model/brick.dart';
import 'package:bricks/presentation/widget/app_bar_widget.dart';
import 'package:bricks/util/style/base_text_style.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key, required this.brick}) : super(key: key);

  final Brick brick;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarWidget(title: brick.name, demoPage: brick.demoPage),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: horizontalMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 24),
                    Text("[${brick.id}] ${brick.name} (v${brick.version})",
                        style: BaseTextStyle.subtitle1()),
                    const SizedBox(height: 24),
                    Text(brick.description, style: BaseTextStyle.label()),
                    const SizedBox(height: 32),
                    SizedBox(height: MediaQuery.of(context).padding.bottom)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
