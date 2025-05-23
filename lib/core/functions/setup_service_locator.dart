import 'package:books/core/services/api_service.dart';
import 'package:books/features/home/data/data_sources/home_local_data_source.dart';
import 'package:books/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:books/features/home/data/repositories_impl/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeRemoteDataSource: HomeRemoteDataSourceImpl(getIt.get<ApiService>()),
      homeLocalDataSource: HomeLocalDataSourceImpl(),
    ),
  );
}
