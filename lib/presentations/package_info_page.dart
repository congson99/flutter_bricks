import 'package:bricks/data/models/local_package_model.dart';
import 'package:bricks/utils/style/base_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PackageInfoPage extends StatelessWidget {
  const PackageInfoPage({Key? key, required this.packageModel})
      : super(key: key);

  final LocalPackage packageModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Package Info")),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 32),
            Container(
              height: 80,
              width: 80,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(16)),
              child: SvgPicture.asset(
                packageModel.iconPath,
                color: Colors.black,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 12),
            Text(packageModel.name, style: BaseTextStyle.subtitle2()),
            const SizedBox(height: 8),
            Text(packageModel.version,
                style: BaseTextStyle.label(color: Colors.black45)),
            const SizedBox(height: 32),
            Text(packageModel.description,
                style: BaseTextStyle.label().copyWith()),
            const SizedBox(height: 32)
          ],
        ),
      ),
    );
  }
}
