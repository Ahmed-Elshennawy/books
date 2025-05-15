import 'package:books/constants.dart';
import 'package:books/core/functions/setup_service_locator.dart';
import 'package:books/core/functions/simple_bloc_observer.dart';
import 'package:books/core/utils/app_colors.dart';
import 'package:books/core/utils/app_router.dart';
import 'package:books/features/home/data/repositories_impl/home_repo_impl.dart';
import 'package:books/features/home/domain/entities/book_entity.dart';
import 'package:books/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:books/features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:books/features/home/presentation/blocs/feature_books_cubit/featured_books_cubit.dart';
import 'package:books/features/home/presentation/blocs/newest_books.dart/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  setupServiceLocator();
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  runApp(const BooksApp());
}

class BooksApp extends StatelessWidget {
  const BooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(
              FetchFeaturedBooksUseCase(getIt.get<HomeRepoImpl>()),
            )..fetchFeaturedBooks();
          },
        ),
        BlocProvider(
          create: (context) {
            return NewestBooksCubit(
              FetchNewestBooksUsecase(getIt.get<HomeRepoImpl>()),
            )..fetchNewestBooks();
          },
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
