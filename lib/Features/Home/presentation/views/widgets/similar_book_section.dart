import 'package:bookly_app/Features/Home/presentation/views/widgets/similar_books_listview.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'You can also like',
        style: Style.textStyle16.copyWith(fontWeight: FontWeight.w600),
      ),
      const SizedBox(
        height: 10,
      ),
      const SimilarBooksListview(),
    ]);
  }
}
