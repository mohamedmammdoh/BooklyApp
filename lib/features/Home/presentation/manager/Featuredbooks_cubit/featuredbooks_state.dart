import 'package:booklyapp/features/Home/data/book_model/book_model.dart';

abstract class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookModel> books;

  FeaturedBooksSuccess({required this.books});
}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksFailer extends FeaturedBooksState {
  final String errorMessage;

  FeaturedBooksFailer({required this.errorMessage});
}
