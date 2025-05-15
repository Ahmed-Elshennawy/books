import 'package:books/core/utils/app_colors.dart';
import 'package:books/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final String rating;
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: kAmberColor, size: 16.0),
        const SizedBox(width: 6.5),
        Text(rating, style: Styles.testStyle10),
        const SizedBox(width: 5.0),
        Opacity(opacity: 0.5, child: Text('(245)', style: Styles.testStyle14)),
      ],
    );
  }
}
