import 'package:flutter/material.dart';
import 'package:books/features/home/presentation/widgets/best_seller_list_view_item.dart';


class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: const BooksListViewItem(),
        );
      },
    );
  }
}
