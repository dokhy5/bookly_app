import 'package:bookly_app/Features/Home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/feature_books_list_view.dart';

import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomAppBar(),
            ),
            FeatureBooksListView(),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Best Sellers',
                style: Style.textStyle18,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      SliverFillRemaining(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: BestSellerListView(),
        ),
      )
    ]);
  }
}
