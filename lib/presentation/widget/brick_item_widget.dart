import 'package:bricks/data/model/brick.dart';
import 'package:bricks/presentation/page/info_page.dart';
import 'package:bricks/util/style/base_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const double _horizontalPadding = 24;

class BrickItemWidget extends StatelessWidget {
  const BrickItemWidget({
    super.key,
    required this.cardSize,
    required this.brick,
  });

  final double cardSize;
  final Brick brick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => pushInfoPage(context),
      child: Container(
        width: cardSize,
        color: Colors.transparent,
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              height: cardSize - _horizontalPadding,
              width: cardSize - _horizontalPadding,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(16)),
              child: SvgPicture.asset(
                brick.iconPath,
                color: Colors.black,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 36,
              child: Text(
                brick.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style:
                    BaseTextStyle.body().copyWith(fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void pushInfoPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => InfoPage(brick: brick)));
  }
}
