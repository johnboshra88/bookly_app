part of 'featured_book_cubit.dart';

sealed class FeaturedBookState extends Equatable {
  const FeaturedBookState();

  @override
  List<Object> get props => [];
}

final class FeaturedBookInitial extends FeaturedBookState {}

final class FeaturedBookLoding extends FeaturedBookState {}

final class FeaturedBookFailure extends FeaturedBookState {
  final String errorMessage;

  const FeaturedBookFailure(this.errorMessage);
}

final class FeaturedBookSuccess extends FeaturedBookState {
  final List<BookModel> books;

  const FeaturedBookSuccess(this.books);
}
