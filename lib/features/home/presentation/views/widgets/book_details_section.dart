import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_list_view_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .22),
          child: const CustomBookImage(imageUrl: "https://img.youm7.com/ArticleImgs/2019/10/15/8134-download.jfif",),
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
      ],
    );
  }
}
