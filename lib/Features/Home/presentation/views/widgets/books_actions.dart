import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomButton(
            textColor: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
            text: 'Free',
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () async {
              final url = Uri.parse(bookModel.volumeInfo.previewLink!);
            if (await canLaunchUrl(url) ) {
              launchUrl(url);
              }
            },
            textColor: Colors.white,
            backgroundColor: Colors.red,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            text: ' preveiw',
          ),
        ),
      ],
    );
  }
}
