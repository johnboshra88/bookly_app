import 'package:bookly/core/widgets/custom_loading_indecatore.dart';
import 'package:bookly/core/widgets/custome_error_widget.dart';
import 'package:bookly/features/home/presentation/manger/featured_books_cubit/featured_book_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custome_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCubit, FeaturedBookState>(
      builder: (context, state) {
        if (state is FeaturedBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: CustomBookImage(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks.thumbnail,
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBookFailure) {
          return CustomeErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndecatore();
        }
      },
    );
  }
}
