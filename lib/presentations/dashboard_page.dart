import 'dart:math';

import 'package:bricks/data/models/local_package_model.dart';
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
    double cardSize = (contentWidth - horizontalMargin) / count;
    return Scaffold(
      body: Container(
        width: contentWidth,
        padding: const EdgeInsets.symmetric(horizontal: horizontalMargin / 2),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: MediaQuery.of(context).padding.top),
              const SizedBox(height: 32),
              buildLogo(),
              const SizedBox(height: 32),
              buildPackageGroup(horizontalMargin, cardSize, "Feature",
                  PackageRepository().getFeaturePackages()),
              buildPackageGroup(horizontalMargin, cardSize, "Object",
                  PackageRepository().getObjectPackages()),
              buildPackageGroup(horizontalMargin, cardSize, "Animation",
                  PackageRepository().getAnimationPackages()),
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

  Widget buildPackageGroup(double horizontalMargin, double cardSize,
      String name, List<LocalPackage> packages) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalMargin / 2),
          child: Text(name, style: BaseTextStyle.subtitle1()),
        ),
        SizedBox(height: horizontalMargin),
        Wrap(
          children: SortingHelper.localPackageByName(packages)
              .map((data) => PackageWidget(
                  cardSize: cardSize,
                  data: data,
                  horizontalMargin: horizontalMargin))
              .toList(),
        ),
        SizedBox(height: horizontalMargin / 2),
      ],
    );
  }
}
