import 'package:bricks/data/models/local_package_model.dart';
import 'package:bricks/utils/style/base_color.dart';
import 'package:bricks/utils/style/base_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PackageWidget extends StatelessWidget {
  const PackageWidget({
    super.key,
    required this.cardSize,
    required this.data,
  });

  final double cardSize;
  final LocalPackage data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (_) => data.demoPage)),
      child: Container(
        width: cardSize,
        color: Colors.transparent,
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              height: cardSize,
              width: cardSize,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: BaseColor.grey100,
                  borderRadius: BorderRadius.circular(16)),
              child: SvgPicture.asset(
                data.iconPath,
                color: BaseColor.grey900,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 34,
              child: Text(
                data.name,
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
}
