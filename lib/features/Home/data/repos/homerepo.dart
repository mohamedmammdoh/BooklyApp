import 'package:booklyapp/core/Errors/failers.dart';
import 'package:booklyapp/features/Home/data/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failer, List<BookModel>>> fetchBestNewestBooks();
  Future<Either<Failer, List<BookModel>>> fetchFeaturedBooks();
}
