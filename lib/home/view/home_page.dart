import 'package:bricks/home/data/brick_model.dart';
import 'package:bricks/home/data/brick_reponsitory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const double _spacing = 12;
const double _cardSize = 88;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: MediaQuery.of(context).padding.top),
              const SizedBox(height: 32),
              Container(
                  alignment: Alignment.center,
                  child: Image.asset("assets/icons/app_icon.png",
                      width: 120, fit: BoxFit.cover)),
              const SizedBox(height: 32),
              ...BrickRepository().getData().map((group) =>
                  buildBrickGroup(context, group.name, group.bricks)),
              const SizedBox(height: 32),
              SizedBox(height: MediaQuery.of(context).padding.bottom),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBrickGroup(
      BuildContext context, String name, List<BrickModel> packages) {
    if (packages.isEmpty) return const SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: _spacing),
            child: Text(name, style: Theme.of(context).textTheme.titleLarge)),
        const SizedBox(height: _spacing * 2),
        Wrap(
          alignment: WrapAlignment.start,
          runSpacing: _spacing * 2,
          children: _sortBrickByName(packages)
              .map((brick) => buildBrickItem(context, brick))
              .toList(),
        ),
        const SizedBox(height: _spacing * 2),
      ],
    );
  }

  Widget buildBrickItem(BuildContext context, BrickModel brick) {
    return GestureDetector(
      onTap: () => _onItemTap(context, brick),
      child: Container(
        width: _cardSize,
        color: Colors.transparent,
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              height: _cardSize - _spacing * 2,
              width: _cardSize - _spacing * 2,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(16)),
              child: SvgPicture.asset(brick.iconPath,
                  color: Colors.black, fit: BoxFit.contain),
            ),
            const SizedBox(height: 8),
            SizedBox(
              child: Text(
                brick.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTap(BuildContext context, BrickModel brick) {
    if (brick.demoPage != null) {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => brick.demoPage!));
    } else {
      print("NOT AVAILABLE");
    }
  }

  List<BrickModel> _sortBrickByName(List<BrickModel> resource) {
    List<BrickModel> result = [];
    for (var element in resource) {
      result.add(element);
    }
    result.sort((a, b) {
      return a.name.toLowerCase().compareTo(b.name.toLowerCase());
    });
    return result;
  }
}
