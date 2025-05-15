import 'package:books/core/utils/app_fonts.dart';
import 'package:books/features/home/domain/entities/book_entity.dart';
import 'package:books/features/home/presentation/widgets/book_rating.dart';
import 'package:books/features/home/presentation/widgets/custom_book_details_app_bar.dart';
import 'package:books/features/home/presentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.book});

  final BookEntity book;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        // App bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: CustomBookDetailsAppBar(),
        ),
        // Book image
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.28),
          child: CustomBookImage(image: book.image ?? ''),
        ),
        SizedBox(height: 40),
        // Book title and author
        Text(
          book.title,
          style: Styles.testStyle28,
          textAlign: TextAlign.center,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            book.authorName ?? 'Unknown Author',
            style: Styles.testStyle18.copyWith(fontStyle: FontStyle.italic),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(height: 20),
        // Rating
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: book.rating ?? '0.0',
        ),
      ],
    );
  }
}
