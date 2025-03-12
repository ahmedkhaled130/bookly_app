import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/books_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Failure, List<BooksModel>>> fetchBestSellerBooks() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks() {

    throw UnimplementedError();
  }

}