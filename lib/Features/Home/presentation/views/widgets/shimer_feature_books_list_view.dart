import 'package:bookly_app/Features/Home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimerFeatureBooksListView extends StatelessWidget {
  const ShimerFeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
 return SizedBox(
          height: MediaQuery.of(context).size.height * .25,
          child: Shimmer.fromColors(
            baseColor: Colors.grey,
            highlightColor: Colors.blueGrey,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomBookImage(imageUrl: 'https://pngimg.com/uploads/mario/mario_PNG125.png',),
                );
              },
            ),
          ),
        );
  }
}
class ShimerNewsetBooksListView extends StatelessWidget {
  const ShimerNewsetBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Shimmer.fromColors(

          baseColor: const Color.fromARGB(255, 43, 40, 40),
            highlightColor: Colors.blueGrey,
      
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: BestSellerListViewItem(),);
          }
          ),
          );
        }
    
    }