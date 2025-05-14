import 'package:books/core/utils/app_fonts.dart';
import 'package:books/features/home/presentation/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // books you may also like section
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'You can also like',
              style: Styles.testStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: SimilarBooksListView(),
        ),
      ],
    );
  }
}
