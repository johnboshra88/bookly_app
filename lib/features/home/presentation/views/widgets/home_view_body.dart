import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custome_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custome_list_view_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedListViewItem(),
          FeatureBooksListView(),
          Text(
            'Best Seller',
            style: Styles.titleMedium,
          )
        ],
      ),
    );
  }
}
