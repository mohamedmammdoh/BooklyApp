import 'package:booklyapp/core/Errors/failers.dart';
import 'package:booklyapp/features/Home/data/book_model/book_model.dart';
import 'package:booklyapp/features/Home/data/repos/homerepo.dart';
import 'package:dartz/dartz.dart';

class HomeRepo_imp implements HomeRepo {
  @override
  Future<Either<Failer, List<BookModel>>> fetchBestSellerBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failer, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
