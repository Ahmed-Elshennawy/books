import 'package:books/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Colors.amber, size: 15.0),
        const SizedBox(width: 6.3),
        Text('4.5', style: Styles.testStyle16),
        const SizedBox(width: 5.0),
        Text(
          '(245)',
          style: Styles.testStyle14.copyWith(color: Color(0xff707070)),
        ),
      ],
    );
  }
}
