import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
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
               BookDetailsSection(
                book:bookModel
              ),
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
