import 'package:books/features/home/presentation/widgets/books_actions.dart';
import 'package:books/features/home/presentation/widgets/books_details_section.dart';
import 'package:books/features/home/presentation/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              // book details section
              BooksDetailsSection(),
              const SizedBox(height: 37),
              // books buttons
              BooksAction(),
              Expanded(child: const SizedBox(height: 40)),
              // books you may also like section
              SimilarBooksSection(),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ],
    );
  }
}
