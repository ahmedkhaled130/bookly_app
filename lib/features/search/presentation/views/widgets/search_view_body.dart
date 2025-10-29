import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../home/data/models/books_model.dart';
import '../../../../home/presentation/views/widgets/book_list_view_item.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSearchTextField(),
          const SizedBox(
            height: 16,
          ),
          Text(
            "Best Seller",
            style: Styles.textStyle18?.copyWith(fontFamily: kGtSectraFine),
          ),
          const SizedBox(
            height: 12,
          ),
          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return  Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BookListViewItem(booksModel: BooksModel(),),
        );
      },
    );
  }
}
