// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:booklyapp/features/Home/data/repos/homerepo.dart';
import 'package:booklyapp/features/Home/presentation/manager/Newestbooks_cubit/newestbooks_state.dart';

class NewestbooksCubit extends Cubit<NewestedBooksState> {
  NewestbooksCubit(this.homeRepo) : super(NewsetedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestedBooks() async {
    emit(NewseteddBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (Failer) => emit(NewsetedBooksFailer(errorMessage: Failer.failerMessage)),
      (Books) => emit(
        NewsetedBooksSuccess(books: Books),
      ),
    );
  }
}
