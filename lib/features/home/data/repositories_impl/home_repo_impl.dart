import 'package:books/core/errors/failure.dart';
import 'package:books/features/home/data/data_sources/home_local_data_source.dart';
import 'package:books/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:books/features/home/domain/entities/book_entity.dart';
import 'package:books/features/home/domain/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl({
    required this.homeRemoteDataSource,
    required this.homeLocalDataSource,
  });

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks({
    int pageNumber = 0,
  }) async {
    List<BookEntity> booksList;
    try {
      booksList = homeLocalDataSource.fetchFeaturedBooks(
        pageNumber: pageNumber,
      );
      if (booksList.isNotEmpty) {
        return right(booksList);
      }
      booksList = await homeRemoteDataSource.fetchFeaturedBooks(
        pageNumber: pageNumber,
      );
      return right(booksList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchNewestBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchNewestBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
