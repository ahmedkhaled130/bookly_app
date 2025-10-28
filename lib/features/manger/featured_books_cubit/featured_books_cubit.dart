import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';

import '../../home/data/models/books_model.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void>fetchFeaturedBooks()async{
    emit(FeaturedBooksLoading());
    var response= await homeRepo.fetchFeaturedBooks();
    response.fold((failure) {
      emit(FeaturedBooksFailure(failure.errMsg));
    }, (books) {
emit(FeaturedBooksSuccess(books));
    },);
  }
  }