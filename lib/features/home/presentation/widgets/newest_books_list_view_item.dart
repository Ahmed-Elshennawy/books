import 'package:books/constants.dart';
import 'package:books/core/utils/app_fonts.dart';
import 'package:books/core/utils/app_router.dart';
import 'package:books/features/home/domain/entities/book_entity.dart';
import 'package:books/features/home/presentation/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewestBooksListViewItem extends StatelessWidget {
  const NewestBooksListViewItem({super.key, required this.book});

  final BookEntity book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.kBookDetailsVIew),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 3.8,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(book.image ?? ''),
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
                    book.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.testStyle20.copyWith(
                      fontFamily: kGtSectraFont,
                    ),
                  ),
                  const SizedBox(height: 3.0),
                  Text(book.authorName ?? 'UnKnown', 
                   maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  style: Styles.testStyle14),
                  const SizedBox(height: 3.0),
                  Row(
                    children: [
                      Text(
                        book.price.toString(),
                        style: Styles.testStyle20.copyWith(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Spacer(),
                      BookRating(rating: book.rating ?? '0.0'),
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
