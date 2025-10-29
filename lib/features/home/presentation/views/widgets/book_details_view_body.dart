import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

import 'book_details_section.dart';
import 'books_action.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key,  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                  const BookDetailsSection(),
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
                    style: Styles.textStyle14
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                const SimilarBooksListView(),
                const SizedBox(
                  height: 26,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
