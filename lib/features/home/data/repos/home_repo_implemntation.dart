import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplemntation implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplemntation(this.apiService);

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
          endPoints: 'volumes?Filtering=free-ebooks&q=subject:Programming');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerFailur());
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }
}
