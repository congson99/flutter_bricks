import 'dart:math';

import 'package:bricks/data/package_data.dart';
import 'package:bricks/util/style/base_color.dart';
import 'package:bricks/util/style/base_text_style.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double horizontalMargin = 24;
    const double minCardSize = 150;
    double contentWidth = min(MediaQuery.of(context).size.width, 700);
    int count = contentWidth ~/ minCardSize;
    double cardSize =
        (contentWidth - horizontalMargin * 2 - (count - 1) * horizontalMargin) /
            count;
    return Scaffold(
      body: Container(
        width: contentWidth,
        padding: const EdgeInsets.symmetric(horizontal: horizontalMargin),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: MediaQuery.of(context).padding.top),
              Container(
                alignment: Alignment.center,
                child: Image.asset("assets/icons/app_icon.png",
                    width: 120, fit: BoxFit.cover),
              ),
              const SizedBox(height: 32),
              Wrap(
                spacing: horizontalMargin,
                runSpacing: horizontalMargin,
                children: PackageData.data()
                    .map((data) => GestureDetector(
                          onTap: () => Navigator.push(context,
                              MaterialPageRoute(builder: (_) => data.page)),
                          child: Container(
                            height: cardSize,
                            width: cardSize,
                            color: BaseColor.grey200,
                            alignment: Alignment.center,
                            child: Text(
                              data.name,
                              style: BaseTextStyle.heading2(),
                            ),
                          ),
                        ))
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
