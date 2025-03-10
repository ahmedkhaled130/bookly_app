import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .22),
            child: const CustomBookImage(),
          ),
          SizedBox(
            height: 43,
          ),
          Text(
            "A Little Life",
            style: Styles.textStyle30,
          ),
          SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .70,
            child: Text(
              "Hanya Yanagih",
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
