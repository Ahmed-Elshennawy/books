import 'package:books/features/home/presentation/pages/book_details_view.dart';
import 'package:books/features/home/presentation/pages/home_page.dart';
import 'package:books/features/splash/presentation/pages/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kbookDetailsVIew = '/BookDetailsVIew';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => HomePage()),
      GoRoute(path: kbookDetailsVIew, builder: (context, state) => BookDetailsView()),
    ],
  );
}
