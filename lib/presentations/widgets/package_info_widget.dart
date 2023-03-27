import 'package:bricks/data/models/local_package_model.dart';
import 'package:bricks/utils/style/base_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PackageInfoWidget extends StatelessWidget {
  const PackageInfoWidget(
      {Key? key, required this.packageModel, required this.maxSafeHeight})
      : super(key: key);

  final LocalPackage packageModel;
  final double maxSafeHeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.pop(context),
      child: DraggableScrollableSheet(
          initialChildSize: 0.7,
          minChildSize: 0.7,
          maxChildSize: maxSafeHeight,
          builder: (_, controller) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16))),
                child: ListView(
                  controller: controller,
                  children: [
                    const SizedBox(height: 32),
                    Container(
                      alignment: Alignment.center,
                      child: Container(
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
                    ),
                    const SizedBox(height: 12),
                    Container(
                        alignment: Alignment.center,
                        child: Text(packageModel.name,
                            style: BaseTextStyle.subtitle2())),
                    const SizedBox(height: 32),
                    Text(packageModel.description,
                        style: BaseTextStyle.label().copyWith()),
                    const SizedBox(height: 32),
                    // SizedBox(height: MediaQuery.of(context).padding.bottom)
                  ],
                ),
              )),
    );
  }
}
