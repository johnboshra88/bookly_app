import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomeListViewItems extends StatelessWidget {
  const CustomeListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .3,
      width: 150,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetsData.test), fit: BoxFit.fill)),
    );
  }
}
