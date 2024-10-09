import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_app/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

var getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<Dio>(
    Dio(),
  );

  getIt.registerSingleton<ApiService>(
    ApiService(
      getIt.get<Dio>(),
    ),
  );

  getIt.registerSingleton<HomeRemoteDataSource>(
    HomeRemoteDataSourceImpel(getIt.get<ApiService>()),
  );

  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeRemoteDataSource: getIt.get<HomeRemoteDataSource>(),
      homeLocalDataSource: HomeLocalDataSourceImpl(),
    ),
  );


}
