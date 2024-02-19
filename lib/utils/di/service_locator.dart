// lib/di/service_locator.dart

import 'package:get_it/get_it.dart';
import 'package:tezz_cafe_app/data/auth/data_source/auth_service_repo.dart';
import 'package:tezz_cafe_app/data/auth/repository/auth_repository.dart';
import 'package:tezz_cafe_app/utils/di/dio_options.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupLocator() async {
  // Register your dependencies here
  getIt.registerSingleton(AuthService(DioOptions.getDio()));
  getIt.registerSingleton(AuthRepository(getIt<AuthService>()));
}

void tearDownLocator() {
  getIt.reset();
}
