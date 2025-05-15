import 'package:books/features/home/presentation/blocs/newest_books.dart/newest_books_cubit.dart';
import 'package:books/features/home/presentation/widgets/newest_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListViewBlocConsumer extends StatelessWidget {
  const NewestBooksListViewBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewestBooksCubit, NewestBooksState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
            child: Center(child: Text(state.errorMessage)),
          );
        } else if (state is NewestBooksSuccess) {
          return NewestBooksListView(books: state.books);
        } else {
          return SliverToBoxAdapter(
            child: const Center(child: Padding(
              padding: EdgeInsets.only(top:100),
              child: CircularProgressIndicator(),
            )),
          );
        }
      },
    );
  }
}
