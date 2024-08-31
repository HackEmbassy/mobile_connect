// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, implementation_imports, depend_on_referenced_packages

import 'package:stacked_services/src/dialog/dialog_service.dart';
import 'package:stacked_services/src/navigation/navigation_service.dart';
import 'package:stacked_services/src/snackbar/snackbar_service.dart';
import 'package:stacked_shared/stacked_shared.dart';

import '../Api/auth_api.dart';
import '../Helpers/Contract/contract-implementation.dart';
import '../Helpers/Repository/repository_implementation.dart';
import '../Helpers/veiwModel/auth_viewmodel.dart';
import '../Network/Network_Service.dart';
import 'Manager/shared_preferences.dart';

final locator = StackedLocator.instance;

Future<void> setupLocator({
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => SnackbarService());
  locator.registerLazySingleton(() => SharedPreferencesService());
  locator.registerLazySingleton(() => AuthApi());
  locator.registerLazySingleton(() => NetworkService());
  locator.registerLazySingleton(() => AuthContractsImpl());
  locator.registerLazySingleton(() => AuthRepoImpl());
  locator.registerLazySingleton(() => AuthViewmodel());
}
