import 'package:bookly/core/widgets/custom_loading_indecatore.dart';
import 'package:bookly/core/widgets/custome_error_widget.dart';
import 'package:bookly/features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custome_book_item.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
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
        } else if (state is SimilarBooksFailure) {
          return CustomeErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndecatore();
        }
      },
    );
  }
}
