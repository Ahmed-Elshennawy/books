import 'package:books/features/home/domain/entities/book_entity.dart';
import 'package:books/features/home/presentation/widgets/newest_books_list_view_item.dart';
import 'package:flutter/material.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key, required this.books});

  final List<BookEntity> books;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: NewestBooksListViewItem(book: books[index]),
        );
      }, childCount: books.length),
    );
  }
}
