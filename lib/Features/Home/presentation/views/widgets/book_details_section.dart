import 'package:bookly_app/Features/Home/presentation/views/widgets/book_ratting.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/books_actions.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.20),
          child: const CustomBookImage(imageUrl: 'https://pngimg.com/uploads/mario/mario_PNG125.png',),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          'The Jungle Book',
          style: Style.textStyle30.copyWith(fontFamily: kGTSectraFine),
        ),
        SizedBox(
          height: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            'Rudyard Kipling',
            style: Style.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        BookRatting(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height: 37,
        ),
        BooksActions(),
      ],
    );
  }
}
