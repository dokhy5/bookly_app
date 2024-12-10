import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_ratting.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/books_actions.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.20),
          child:  CustomBookImage(imageUrl: book.volumeInfo.imageLinks?.thumbnail?? '',),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          book.volumeInfo.title!,
          style: Style.textStyle30.copyWith(fontFamily: kGTSectraFine),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            book.volumeInfo.authors![0],
            style: Style.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        BookRatting(
          count: book.volumeInfo.ratingsCount ?? 0,
          rating: book.volumeInfo.averageRating ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        BooksActions(bookModel: book,),
      ],
    );
  }
}
