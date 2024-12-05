import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRatting extends StatelessWidget {
  const BookRatting({super.key, required this.mainAxisAlignment});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 16,
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          '4.8',
          style: Style.textStyle16,
        ),
        const SizedBox(
          width: 7,
        ),
        Text(
          '(2390)',
          style: Style.textStyle14.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}
