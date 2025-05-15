import 'package:books/features/home/domain/entities/book_entity.dart';
import 'package:books/features/home/presentation/widgets/books_actions.dart';
import 'package:books/features/home/presentation/widgets/books_details_section.dart';
// import 'package:books/features/home/presentation/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});

  final BookEntity book;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              // Book details section
              BooksDetailsSection(book: book),
              const SizedBox(height: 37),
              // Books buttons
              BooksAction(),
              Expanded(child: const SizedBox(height: 40)),
              // Books you may also like section
              // SimilarBooksSection(),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ],
    );
  }
}
