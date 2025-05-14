import 'package:books/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: const CustomButton(
            backgroundColor: Colors.white,
            textColor: Colors.black,
            text: '19.99 \$',
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ), fontSize: 22,
          ),
        ),
        Expanded(
          child: const CustomButton(
            backgroundColor: Color(0xffEF8262),
            textColor: Colors.white,
            text: 'Free Preview',
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ), fontSize:14,
          ),
        ),
      ],
    );
  }
}
