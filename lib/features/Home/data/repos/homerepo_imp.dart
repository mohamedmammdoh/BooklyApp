import 'package:booklyapp/core/Errors/failers.dart';
import 'package:booklyapp/core/utilites/apiservices.dart';
import 'package:booklyapp/features/Home/data/book_model/book_model.dart';
import 'package:booklyapp/features/Home/data/repos/homerepo.dart';
import 'package:dartz/dartz.dart';

class HomeRepo_imp implements HomeRepo {
  Api api = Api();
  @override
  Future<Either<Failer, List<BookModel>>> fetchBestNewestBooks() async {
    try {
      var data = await api.Get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=newest');

      List<BookModel> books_list = [];

      for (var i = 0; i < data['items']; i++) {
        books_list.add(BookModel.fromJson(data));
      }
      return right(books_list);
    } catch (e) {
      return left(ServerFailer());
    }
  }

  @override
  Future<Either<Failer, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
