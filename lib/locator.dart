import 'package:get_it/get_it.dart';
import 'package:mwd_concessionaire_portal/core/db/hive/collections/authentication_collection.dart';
import 'package:mwd_concessionaire_portal/core/db/hive/collections/linked_accounts_collection.dart';
import 'package:mwd_concessionaire_portal/core/db/hive/local_storage_service.dart';
import 'package:mwd_concessionaire_portal/core/services/api_endpoint_service.dart';
import 'package:mwd_concessionaire_portal/src/authentication/data/data_sources/authentication_data_source.dart';
import 'package:mwd_concessionaire_portal/src/authentication/data/data_sources/authentication_remote_data_source_impl.dart';
import 'package:mwd_concessionaire_portal/src/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/repositories/authentication_repository.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/usecases/confirm_otp_usecase.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/usecases/create_password_usecase.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/usecases/forgot_password_usecase.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/usecases/login_usecase.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/usecases/request_auth_status_usecase.dart';
import 'package:mwd_concessionaire_portal/src/authentication/domain/usecases/sign_up_usecase.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/data/data_sources/billing_information_data_source.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/data/data_sources/billing_information_remote_data_source_impl.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/data/repositories/billing_information_repository_impl.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/domain/repositories/billing_information_repository.dart';
import 'package:mwd_concessionaire_portal/src/billing_information/domain/usecases/get_billing_history_usecase.dart';
import 'package:mwd_concessionaire_portal/src/profile/data/data_sources/profile_data_source.dart';
import 'package:mwd_concessionaire_portal/src/profile/data/data_sources/profile_remote_data_source_impl.dart';
import 'package:mwd_concessionaire_portal/src/profile/data/repositories/profile_repository_impl.dart';
import 'package:mwd_concessionaire_portal/src/profile/domain/repositories/profile_repository.dart';
import 'package:mwd_concessionaire_portal/src/profile/domain/usecases/delete_accounts_usecase.dart';
import 'package:mwd_concessionaire_portal/src/profile/domain/usecases/get_linked_accounts_usecase.dart';
import 'package:mwd_concessionaire_portal/src/profile/domain/usecases/link_new_account_usecase.dart';
import 'package:mwd_concessionaire_portal/src/profile/domain/usecases/save_account_alias_usecase.dart';
import 'package:mwd_concessionaire_portal/src/profile/domain/usecases/set_default_account_usecase.dart';

final getIt = GetIt.instance;

Future<void> setupLocator()async {
  final localStorageService = LocalStorageService();
  await localStorageService.init();
  final authenticationCollection = AuthenticationCollection();
  await authenticationCollection.init(localStorageService);

  final linkedAccountsCollection = LinkedAccountsCollection();
  await linkedAccountsCollection.init(localStorageService);

  getIt.registerLazySingleton(() => authenticationCollection);
  getIt.registerLazySingleton(() => linkedAccountsCollection);

  APIEndpointService.init();

  getIt.registerLazySingleton(() => localStorageService);


  _setupAuth();
  _setupProfile();
  _setupBilling();
}

void _setupAuth() {

  getIt.registerLazySingleton<AuthenticationDataSource>(() =>
      AuthenticationRemoteDataSourceImpl());

  getIt.registerLazySingleton<AuthenticationRepository>(() =>
      AuthenticationRepositoryImpl(dataSource: getIt()));

  getIt.registerLazySingleton(() => RequestAuthStatusUsecase(getIt()));
  getIt.registerLazySingleton(() => LoginUsecase(getIt()));
  getIt.registerLazySingleton(() => SignUpUsecase(getIt()));
  getIt.registerLazySingleton(() => ConfirmOTPUsecase(getIt()));
  getIt.registerLazySingleton(() => ForgotPasswordUsecase(getIt()));
  getIt.registerLazySingleton(() => CreatePasswordUsecase(getIt()));
}

void _setupProfile() {
  getIt.registerLazySingleton<ProfileDataSource>(() =>
      ProfileRemoteDataSourceImpl());

  getIt.registerLazySingleton<ProfileRepository>(() =>
      ProfileRepositoryImpl(dataSource: getIt()));

  getIt.registerLazySingleton(() => GetLinkedAccountsUsecase(getIt()));
  getIt.registerLazySingleton(() => LinkNewAccountUsecase(getIt()));
  getIt.registerLazySingleton(() => SetDefaultAccountUsecase(getIt()));
  getIt.registerLazySingleton(() => SaveAccountAliasUsecase(getIt()));
  getIt.registerLazySingleton(() => DeleteAccountsUsecase(getIt()));
}

void _setupBilling() {
  getIt.registerLazySingleton<BillingInformationDataSource>(() =>
      BillingInformationRemoteDataSourceImpl());

  getIt.registerLazySingleton<BillingInformationRepository>(() =>
      BillingInformationRepositoryImpl(dataSource: getIt()));

  getIt.registerLazySingleton(() => GetBillingHistoryUsecase(getIt()));
}