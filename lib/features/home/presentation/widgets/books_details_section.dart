import 'package:books/core/utils/app_fonts.dart';
import 'package:books/features/home/presentation/widgets/book_rating.dart';
import 'package:books/features/home/presentation/widgets/custom_book_details_app_bar.dart';
import 'package:books/features/home/presentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        // app bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: CustomBookDetailsAppBar(),
        ),
        // book image
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.28),
          child: CustomBookImage(),
        ),
        SizedBox(height: 40),
        // book title  , and the writer
        Text('The Jungle Book', style: Styles.testStyle30),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.testStyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(height: 20),
        // rating
        BookRating(mainAxisAlignment: MainAxisAlignment.center),
      ],
    );
  }
}
