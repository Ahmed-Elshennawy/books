import 'package:books/core/utils/app_fonts.dart';
import 'package:books/features/home/presentation/widgets/featured_books_list_view_bloc_consumer.dart';
import 'package:books/features/home/presentation/widgets/home_app_bar.dart';
import 'package:books/features/home/presentation/widgets/newest_books_list_view_consumer.dart';
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
              // App Bar
              HomeAppBar(),
              // Featured Books
              FeaturedBooksListViewBlocConsumer(),
              const SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text('Newest Bokks', style: Styles.testStyle18),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
        // Newest Books
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          sliver: NewestBooksListViewBlocConsumer(),
        ),
      ],
    );
  }
}
