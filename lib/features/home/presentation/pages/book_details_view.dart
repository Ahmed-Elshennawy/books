import 'package:books/features/home/domain/entities/book_entity.dart';
import 'package:books/features/home/presentation/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve the BookEntity from the route
    final BookEntity book = GoRouterState.of(context).extra! as BookEntity;
    return Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(book: book),
      ),
    );
  }
}