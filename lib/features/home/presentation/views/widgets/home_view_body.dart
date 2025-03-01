import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'best_seller_list.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            "Best Seller",
            style: Styles.textStyle18?.copyWith(fontFamily: kGtSectraFine),
          ),
          const SizedBox(
            height: 20,
          ),
          BestSellerListViewItem(),

        ],
      ),
    );
  }
}


