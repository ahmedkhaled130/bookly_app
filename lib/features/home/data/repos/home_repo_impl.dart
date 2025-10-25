import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/books_model.dart';
import 'package:dartz/dartz.dart';

import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BooksModel>>> fetchNewestBooks() async {
   try {
     var data= await apiService.get(
          endPoint:
              "volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=newest");
     List<BooksModel> books=[];
for (var item in data['items']){
  books.add(BooksModel.fromJson(item));
}
return right(books);
   } catch (e) {
     return left(ServerFailure());
   }
  }

  @override
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}

























