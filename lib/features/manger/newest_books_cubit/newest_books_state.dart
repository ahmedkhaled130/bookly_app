part of 'newest_books_cubit.dart';

sealed class NewestBooksState {}

final class NewestBooksInitial extends NewestBooksState {}
final class NewestBooksLoading extends NewestBooksState {}
final class NewestBooksSuccess extends NewestBooksState {
  final List<BooksModel>books;

  NewestBooksSuccess(this.books);
}
final class NewestBooksFailure extends NewestBooksState {
  String errMsg;
  NewestBooksFailure(this.errMsg);

}
