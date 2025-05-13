import 'package:books/features/home/presentation/widgets/custom_book_details_app_bar.dart';
import 'package:books/features/home/presentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: CustomBookDetailsAppBar(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.24),
          child: CustomBookImage(),
        ),
      ],
    );
  }
}
