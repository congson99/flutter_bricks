import 'dart:math';

import 'package:bricks/data/repositories/package_responsitory_impl.dart';
import 'package:bricks/presentations/widgets/package_widget.dart';
import 'package:bricks/utils/helper/sorting_helper.dart';
import 'package:bricks/utils/style/base_text_style.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double horizontalMargin = 24;
    const double minCardSize = 80;
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
              const SizedBox(height: 32),
              buildLogo(),
              const SizedBox(height: 32),
              buildFeature(horizontalMargin, cardSize),
              const SizedBox(height: 16),
              buildObject(horizontalMargin, cardSize),
              const SizedBox(height: 16),
              buildAnimation(horizontalMargin, cardSize),
              const SizedBox(height: 32),
              SizedBox(height: MediaQuery.of(context).padding.bottom),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLogo() {
    return Container(
      alignment: Alignment.center,
      child: Image.asset("assets/icons/app_icon.png",
          width: 120, fit: BoxFit.cover),
    );
  }

  Widget buildFeature(double horizontalMargin, double cardSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text("Feature", style: BaseTextStyle.subtitle1()),
        SizedBox(height: horizontalMargin),
        Wrap(
          spacing: horizontalMargin,
          runSpacing: horizontalMargin,
          children: PackageRepository()
              .getFeaturePackages()
              .map((data) => PackageWidget(cardSize: cardSize, data: data))
              .toList(),
        )
      ],
    );
  }

  Widget buildObject(double horizontalMargin, double cardSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text("Object", style: BaseTextStyle.subtitle1()),
        SizedBox(height: horizontalMargin),
        Wrap(
          spacing: horizontalMargin,
          runSpacing: horizontalMargin - 16,
          children: SortingHelper.localPackageByName(
                  PackageRepository().getObjectPackages())
              .map((data) => PackageWidget(cardSize: cardSize, data: data))
              .toList(),
        )
      ],
    );
  }

  Widget buildAnimation(double horizontalMargin, double cardSize) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text("Animation", style: BaseTextStyle.subtitle1()),
        SizedBox(height: horizontalMargin),
        Wrap(
          spacing: horizontalMargin,
          runSpacing: horizontalMargin,
          children: PackageRepository()
              .getAnimationPackages()
              .map((data) => PackageWidget(cardSize: cardSize, data: data))
              .toList(),
        )
      ],
    );
  }
}
