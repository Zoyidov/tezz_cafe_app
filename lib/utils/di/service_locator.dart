// lib/di/service_locator.dart

import 'package:get_it/get_it.dart';
import 'package:tezz_cafe_app/data/auth/data_source/auth_service_repo.dart';
import 'package:tezz_cafe_app/data/auth/repository/auth_repository.dart';
import 'package:tezz_cafe_app/data/table/data_source/table_service_repo.dart';
import 'package:tezz_cafe_app/data/table/repository/table_repository.dart';
import 'package:tezz_cafe_app/data/zone/data_source/zone_service_repo.dart';
import 'package:tezz_cafe_app/data/zone/repository/zone_repository.dart';
import 'package:tezz_cafe_app/utils/di/dio_options.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupLocator() async {
  // Register your dependencies here
  getIt.registerSingleton(AuthService(DioOptions.getDio()));
  getIt.registerSingleton(AuthRepository(getIt<AuthService>()));
  getIt.registerSingleton(ZoneService(DioOptions.getDio()));
  getIt.registerSingleton(ZoneRepository(getIt<ZoneService>()));
  getIt.registerSingleton(TableService(DioOptions.getDio()));
  getIt.registerSingleton(TableRepository(getIt<TableService>()));
}

void tearDownLocator() {
  getIt.reset();
}
