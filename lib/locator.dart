import 'package:get_it/get_it.dart';
import 'package:mwd_concessionaire_portal/core/db/hive/collections/authentication_collection.dart';
import 'package:mwd_concessionaire_portal/core/db/hive/local_storage_service.dart';
import 'package:mwd_concessionaire_portal/core/services/api_endpoint_service.dart';
import 'package:mwd_concessionaire_portal/src/authentication/data/data_sources/authentication_data_source.dart';
import 'package:mwd_concessionaire_portal/src/authentication/data/data_sources/authentication_remote_data_source_impl.dart';
import 'package:mwd_concessionaire_portal/src/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/repositories/authentication_repository.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/usecases/login_usecase.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/usecases/request_auth_status_usecase.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/usecases/sign_up_usecase.dart';

final getIt = GetIt.instance;

Future<void> setupLocator()async {
  final localStorageService = LocalStorageService();
  await localStorageService.init();
  final authenticationCollection = AuthenticationCollection();
  await authenticationCollection.init(localStorageService);

  APIEndpointService.init();

  getIt.registerLazySingleton(() => localStorageService);


  _setupAuth(authenticationCollection);
}

void _setupAuth(AuthenticationCollection collection) {
  getIt.registerLazySingleton(() => collection);

  getIt.registerLazySingleton<AuthenticationDataSource>(() =>
      AuthenticationRemoteDataSourceImpl());

  getIt.registerLazySingleton<AuthenticationRepository>(() =>
      AuthenticationRepositoryImpl(dataSource: getIt()));

  getIt.registerLazySingleton(() => RequestAuthStatusUsecase(getIt()));
  getIt.registerLazySingleton(() => LoginUsecase(getIt()));
  getIt.registerLazySingleton(() => SignUpUsecase(getIt()));
}