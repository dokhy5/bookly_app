import 'package:bookly_app/Features/Home/presentation/manger/newset%20bookscubit/newset_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/newset_books_list_view_item.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/shimer_feature_books_list_view.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsetBooksListView extends StatelessWidget {
  const NewsetBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
        return ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: state.books.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:const EdgeInsets.symmetric(vertical: 10.0),
              child: NewsetBooksListViewItem(
                bookModel:state.books[index]),
            );
          },
        );}
        else if (state is NewsetBooksFailure) {
          return CustomErrorWidget(errMessage: state.errmessge,);
        } else {
          return const ShimerNewsetBooksListView();
        }
      },
    );
  }
}
