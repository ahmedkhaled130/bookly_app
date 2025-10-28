part of 'featured_books_cubit.dart';

@immutable
sealed class FeaturedBooksState {}

final class FeaturedBooksInitial extends FeaturedBooksState {}
final class FeaturedBooksLoading extends FeaturedBooksState {}
final class FeaturedBooksSuccess extends FeaturedBooksState {
 final List<BooksModel>books;

 FeaturedBooksSuccess(this.books);
}
final class FeaturedBooksFailure extends FeaturedBooksState {
  String errMsg;

  FeaturedBooksFailure(this.errMsg);
}
