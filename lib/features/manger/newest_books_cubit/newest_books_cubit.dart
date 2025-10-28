import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/books_model.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit() : super(NewestBooksInitial());
}
