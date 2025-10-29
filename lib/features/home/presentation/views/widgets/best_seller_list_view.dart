import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'book_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {

          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(

                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(booksModel: state.books[index],),
              );
            },
          );
        }else if(state is NewestBooksFailure){
          return CustomErrorWidget(state.errMsg);
        }
        else{
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
