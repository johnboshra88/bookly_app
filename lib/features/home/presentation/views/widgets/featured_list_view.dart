import 'package:bookly/features/home/presentation/views/widgets/custome_book_item.dart';
import 'package:flutter/material.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: const CustomBookImage(),
          );
        },
      ),
    );
  }
}
