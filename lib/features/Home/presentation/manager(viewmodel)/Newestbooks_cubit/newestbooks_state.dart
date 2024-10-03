import 'package:booklyapp/features/Home/data/book_model/book_model.dart';

abstract class NewestedBooksState {}

class NewsetedBooksInitial extends NewestedBooksState {}

class NewsetedBooksSuccess extends NewestedBooksState {
  final List<BookModel> books;

  NewsetedBooksSuccess({required this.books});
}

class NewseteddBooksLoading extends NewestedBooksState {}

class NewsetedBooksFailer extends NewestedBooksState {
  final String errorMessage;

  NewsetedBooksFailer({required this.errorMessage});
}
