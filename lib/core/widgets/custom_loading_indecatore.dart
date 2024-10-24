import 'package:flutter/material.dart';

class CustomLoadingIndecatore extends StatelessWidget {
  const CustomLoadingIndecatore({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
