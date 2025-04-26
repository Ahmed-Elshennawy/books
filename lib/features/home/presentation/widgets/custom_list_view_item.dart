import 'package:books/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          image: DecorationImage(
            image: AssetImage(AppImages.testImage),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
