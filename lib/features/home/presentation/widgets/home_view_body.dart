import 'package:books/core/utils/app_fonts.dart';
import 'package:books/features/home/presentation/widgets/best_seller_list_view.dart';
import 'package:books/features/home/presentation/widgets/featured_list_view.dart';
import 'package:books/features/home/presentation/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppBar(),
              FeaturedBooksListView(),
              const SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text('Best Seller', style: Styles.testStyle18),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),

        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
