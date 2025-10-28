import 'package:bookly_app/features/home/data/models/books_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<BooksModel>>> fetchNewestBooks();

  Future<Either<Failure,List<BooksModel>>> fetchFeaturedBooks();
}























