import 'package:books/features/home/presentation/pages/book_details_view.dart';
import 'package:books/features/home/presentation/pages/home_page.dart';
import 'package:books/features/search/presentation/pages/search_view.dart';
import 'package:books/features/splash/presentation/pages/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsVIew = '/BookDetailsVIew';
  static const kSearchView = '/SearchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        pageBuilder:
            (context, state) => CustomTransitionPage(
              key: state.pageKey,
              child: SplashView(),
              transitionsBuilder: slideTransition,
              transitionDuration: const Duration(milliseconds: 300),
            ),
      ),
      GoRoute(
        path: kHomeView,
        pageBuilder:
            (context, state) => CustomTransitionPage(
              key: state.pageKey,
              child: HomePage(),
              transitionsBuilder: slideTransition,
              transitionDuration: const Duration(milliseconds: 300),
            ),
      ),
      GoRoute(
        path: kBookDetailsVIew,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: BookDetailsView(),
            transitionsBuilder: slideTransition,
            transitionDuration: const Duration(milliseconds: 300),
          );
        },
      ),
      GoRoute(
        path: kSearchView,
        pageBuilder:
            (context, state) => CustomTransitionPage(
              key: state.pageKey,
              child: SearchView(),
              transitionsBuilder: slideTransition,
              transitionDuration: const Duration(milliseconds: 300),
            ),
      ),
    ],
  );

  // Reusable slide transition function
  static Widget slideTransition(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    const begin = Offset(1.0, 0.0); // Start from right
    const end = Offset.zero; // End at center
    const curve = Curves.easeInOut;
    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    var offsetAnimation = animation.drive(tween);
    return SlideTransition(position: offsetAnimation, child: child);
  }
}
