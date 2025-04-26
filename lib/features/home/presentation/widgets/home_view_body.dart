import 'package:books/core/utils/app_fonts.dart';
import 'package:books/features/home/presentation/widgets/featured_list_view.dart';
import 'package:books/features/home/presentation/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeAppBar(),
          FeaturedBooksListView(),
          const SizedBox(height: 30.0),
          Text('Best Seller', style: AppFonts.titleSemiBold16),
        ],
      ),
    );
  }
}
