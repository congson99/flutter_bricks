import 'package:bricks/models/package_model.dart';
import 'package:bricks/util/style/base_color.dart';
import 'package:bricks/util/style/base_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PackageWidget extends StatelessWidget {
  const PackageWidget({
    super.key,
    required this.cardSize,
    required this.data,
  });

  final double cardSize;
  final PackageModel data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.push(context, MaterialPageRoute(builder: (_) => data.page)),
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
            Text(
              data.name,
              overflow: TextOverflow.ellipsis,
              style: BaseTextStyle.body().copyWith(fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
