import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetsData.test), fit: BoxFit.fill)),
    );
  }
}
