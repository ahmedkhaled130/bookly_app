import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/books_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/failures.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BooksModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var data = await apiService.get(
          endPoint:
              "https://www.googleapis.com/books/v1/volumes?q=programming&filter=free-ebooks&sorting=relevance");
      List<BooksModel> books = [];
      for (var item in data['items']) {
        books.add(BooksModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              "volumes?Filtering=free-ebooks&q=subject:computer science&Sorting=newest");
      List<BooksModel> books = [];
      for (var item in data['items']) {
        books.add(BooksModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint: "volumes?Filtering=free-ebooks&q=subject:Programming");
      List<BooksModel> books = [];
      for (var item in data['items']) {
        books.add(BooksModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
