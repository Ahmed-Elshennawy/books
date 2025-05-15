import 'package:books/core/widgets/custom_fading_widget.dart';
import 'package:books/features/home/presentation/widgets/custom_book_image_loading_indicator.dart';
import 'package:flutter/material.dart';

class FeatureBooksListViewLoadingIndicator extends StatelessWidget {
  const FeatureBooksListViewLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CustomFadingWidget(
      child: SizedBox(
        height: size.height * 0.25,
        child: ListView.builder(
          itemCount: 15,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomBookImageLoadingIndicator(),
            );
          },
        ),
      ),
    );
  }
}
