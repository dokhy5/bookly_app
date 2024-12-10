import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_ratting.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewsetBooksListViewItem extends StatelessWidget {
  const NewsetBooksListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: GestureDetector(
        onTap: () {
          
          GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: bookModel);
        },
        child: SizedBox(
          height: 125,
          child: Row(
            children: [
             CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail??''),
              const SizedBox( 
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        bookModel.volumeInfo.title!,
                        style: Style.textStyle20
                            .copyWith(fontFamily: kGTSectraFine),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child:  Text(
                        bookModel.volumeInfo.authors![0],
                        style: Style.textStyle14,maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          'Free',
                          style: Style.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        BookRatting(
                          mainAxisAlignment: MainAxisAlignment.start,
                          count: bookModel.volumeInfo.ratingsCount ?? 0,
                          rating: bookModel.volumeInfo.averageRating ?? 0,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
