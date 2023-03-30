import 'package:bricks/data/models/local_package_model.dart';
import 'package:bricks/presentations/widgets/package_info_widget.dart';
import 'package:bricks/utils/style/base_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PackageWidget extends StatelessWidget {
  const PackageWidget({
    super.key,
    required this.cardSize,
    required this.data,
    required this.horizontalMargin,
  });

  final double cardSize;
  final LocalPackage data;
  final double horizontalMargin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => pushDemoPage(context),
      onDoubleTap: () => pushInfoPage(context),
      onLongPress: () => pushInfoPage(context),
      child: Container(
        width: cardSize,
        color: Colors.transparent,
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              height: cardSize - horizontalMargin,
              width: cardSize - horizontalMargin,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(16)),
              child: SvgPicture.asset(
                data.iconPath,
                color: Colors.black,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 36,
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

  void pushDemoPage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => data.demoPage));
  }

  void pushInfoPage(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double topPadding = MediaQuery.of(context).padding.top;
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return PackageInfoWidget(
            packageModel: data,
            maxSafeHeight: (screenHeight - topPadding) / screenHeight);
      });
  }
}
