import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

import 'books_action.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .22),
                child: const CustomBookImage(),
              ),
              const SizedBox(
                height: 43,
              ),
              const Text(
                "A Little Life",
                style: Styles.textStyle30,
              ),
              const SizedBox(
                height: 3,
              ),
              Opacity(
                opacity: .70,
                child: Text(
                  "Hanya Yanagih",
                  style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      fontFamily: "kGtSectraFine"),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BookRating(),
                ],
              ),
              const SizedBox(
                height: 37,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: BooksAction(),
              ),
              const Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "You can also like",
                  style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 18,),
              const SimilarBooksListView(),
              const SizedBox(height: 26,),

            ],
          ),)
        ],

      ),
    );
  }
}
