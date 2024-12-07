import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return  Text(errMessage , style:Style.textStyle18.copyWith(color: Colors.red));
  }
}