import 'package:bricks/data/model/brick.dart';
import 'package:bricks/data/repository/brick_reponsitory.dart';
import 'package:bricks/presentation/widget/brick_item_widget.dart';
import 'package:bricks/util/helper/sorting_helper.dart';
import 'package:bricks/util/style/base_text_style.dart';
import 'package:flutter/material.dart';

const double _horizontalMargin = 12;
const double _minCardSize = 80;

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: _horizontalMargin / 2),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: MediaQuery.of(context).padding.top),
              const SizedBox(height: 32),
              buildLogo(),
              const SizedBox(height: 32),
              ...BrickRepository().getAllBrickGroup().map((group) =>
                  buildBrickGroup(
                      getCardSize(context), group.name, group.bricks)),
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

  Widget buildBrickGroup(double cardSize, String name, List<Brick> packages) {
    if (packages.isEmpty) return const SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: _horizontalMargin),
          child: Text(name, style: BaseTextStyle.subtitle1()),
        ),
        const SizedBox(height: _horizontalMargin),
        Wrap(
          children: SortingHelper.brickByName(packages)
              .map((data) => BrickItemWidget(cardSize: cardSize, brick: data))
              .toList(),
        ),
        const SizedBox(height: _horizontalMargin),
      ],
    );
  }

  double getCardSize(BuildContext context) {
    double contentWidth = MediaQuery.of(context).size.width;
    int count = contentWidth ~/ _minCardSize;
    double cardSize = (contentWidth - _horizontalMargin * 2) / count;
    return cardSize;
  }
}
