import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: CustomAppBar(),
            ),
            const FeaturedBooksListView(),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Best Seller",
                style: Styles.textStyle18?.copyWith(fontFamily: kGtSectraFine),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ]),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}

