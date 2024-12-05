import 'package:bookly_app/Features/Home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const CustomBookDetailsAppbar(),
              const BookDetailsSection(),
              Expanded(
                child: const SizedBox(
                  height: 50,
                ),
              ),
              SimilarBookSection(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
