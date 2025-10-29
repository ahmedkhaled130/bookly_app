import 'package:bookly_app/features/home/data/models/books_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  final BooksModel booksModel;

  const BookListViewItem({super.key, required this.booksModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push("/bookDetailsView");
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(
              imageUrl: booksModel.volumeInfo?.imageLinks?.thumbnail ??
                  AssetsData.testImgae,
            ),
            const SizedBox(
              width: 18,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      booksModel.volumeInfo!.title!,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGtSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    booksModel.volumeInfo!.authors![0],
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Free",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      BookRating(
                        rating:
                            booksModel.volumeInfo?.averageRating??0
                                ,
                        count:
                            booksModel.volumeInfo?.ratingsCount?.toInt() ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
