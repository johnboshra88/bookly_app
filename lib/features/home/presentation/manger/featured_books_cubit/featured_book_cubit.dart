import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit(this.homeRepo) : super(FeaturedBookInitial());
  final HomeRepo homeRepo;

  Future<void> fechFeatureBook() async {
    emit(FeaturedBookLoding());
    var result = await homeRepo.fetchFeatureBooks();

    result.fold((failure) {
      emit(FeaturedBookFailure(failure.errMessage));
    }, (books) {
      emit(FeaturedBookSuccess(books));
    });
  }
}
