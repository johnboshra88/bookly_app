import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: AspectRatio(
        aspectRatio: 2.9 / 4,
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AssetsData.test), fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
