import 'package:books/core/utils/app_fonts.dart';
import 'package:books/features/search/presentation/widgets/custom_seacrh_text_field.dart';
import 'package:books/features/search/presentation/widgets/search_result_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16.0),
          // Search Field
          CustomSearchTextField(),
          const SizedBox(height: 16.0),
          // Search Results Section
          Text('Search Result', style: Styles.testStyle16),
          const SizedBox(height: 16.0),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
