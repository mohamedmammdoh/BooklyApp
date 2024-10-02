import 'package:booklyapp/features/Home/data/repos/homerepo.dart';
import 'package:booklyapp/features/Home/presentation/manager/cubit/featuredbooks_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedbooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedbooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (Failer) => emit(FeaturedBooksFailer(errorMessage: Failer.failerMessage)),
      (Books) => emit(
        FeaturedBooksSuccess(books: Books),
      ),
    );
  }
}
