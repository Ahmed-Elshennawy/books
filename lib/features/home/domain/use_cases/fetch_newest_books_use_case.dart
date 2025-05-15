import 'package:books/core/errors/failure.dart';
import 'package:books/core/use_cases/use_case.dart';
import 'package:books/features/home/domain/entities/book_entity.dart';
import 'package:books/features/home/domain/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUsecase extends UseCase<List<BookEntity>, NoParams> {
  final HomeRepo homeRepo;
  FetchNewestBooksUsecase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParams? params]) async {
    return await homeRepo.fetchNewestBooks();
  }
}
