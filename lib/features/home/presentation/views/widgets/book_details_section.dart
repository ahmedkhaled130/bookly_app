import 'package:bookly_app/features/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_list_view_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is NewestBooksFailure) {
          return Center(child: Text(state.errMsg));
        } else if (state is NewestBooksSuccess) {
          final book = state.books.isNotEmpty ? state.books[0] : null;

          if (book == null) {
            return const Center(child: Text("No book data available"));
          }

          return Column(
            children: [
              const CustomBookDetailsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .22),
                child: CustomBookImage(
                  imageUrl: book.volumeInfo?.imageLinks?.thumbnail ??
                      "https://img.youm7.com/ArticleImgs/2019/10/15/8134-download.jfif",
                ),
              ),
              const SizedBox(height: 43),
              Text(
                book.volumeInfo?.title ?? "Unknown Title",
                style: Styles.textStyle30,
              ),
              const SizedBox(height: 3),
              Opacity(
                opacity: .70,
                child: Text(
                  book.volumeInfo?.authors?.first ?? "Unknown Author",
                  style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    fontFamily: "kGtSectraFine",
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BookRating(
                    rating: book.volumeInfo?.averageRating ?? 0,
                    count: book.volumeInfo?.ratingsCount?.toInt() ?? 0,
                  ),
                ],
              ),
            ],
          );
        }
        else{
          return const Center(child: CircularProgressIndicator());

        }
      },
    );
  }
}
