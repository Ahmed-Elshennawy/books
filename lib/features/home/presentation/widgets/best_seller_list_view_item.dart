import 'package:books/constants.dart';
import 'package:books/core/utils/app_fonts.dart';
import 'package:books/core/utils/app_images.dart';
import 'package:books/core/utils/app_router.dart';
import 'package:books/features/home/presentation/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.kBookDetailsVIew),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.4 / 4,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage(AppImages.testImage),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(width: 30.0),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Harry Potter and the Goblet of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.testStyle20.copyWith(
                      fontFamily: kGtSectraFont,
                    ),
                  ),
                  const SizedBox(height: 3.0),
                  Text('J.K. Rowling', style: Styles.testStyle14),
                  const SizedBox(height: 3.0),
                  Row(
                    children: [
                      Text(
                        '19.99 \$ ',
                        style: Styles.testStyle20.copyWith(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Spacer(),
                      BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
