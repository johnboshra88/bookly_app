import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custome_book_item.dart';
import 'package:flutter/widgets.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: CustomBookImage(
            imageUrl:
                'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.istockphoto.com%2Fphotos%2Fbeauty-in-nature&psig=AOvVaw0aZEOcxvfjSXOQgiF3yvQQ&ust=1729873118113000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCLCrlNi1p4kDFQAAAAAdAAAAABAE',
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle16.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const BookRating(
          rating: 5,
          count: 250,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 18,
        ),
        const BooksAction(),
        const SizedBox(
          height: 37,
        ),
      ],
    );
  }
}
