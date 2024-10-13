import 'package:flutter/material.dart';

class CustomeBookDetailsAppBar extends StatelessWidget {
  const CustomeBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(icon: const Icon(Icons.close), onPressed: () {}),
        IconButton(
            icon: const Icon(Icons.shopping_cart_outlined), onPressed: () {}),
      ],
    );
  }
}
