import 'package:flutter/material.dart';

import 'custome_book_item.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 1),
            child: CustomBookImage(
              imageUrl: 'https://images.app.goo.gl/jP3pJwUgy38ZEwq17',
            ),
          );
        },
      ),
    );
  }
}
