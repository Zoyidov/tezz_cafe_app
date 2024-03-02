// lib/di/service_locator.dart

import 'package:get_it/get_it.dart';
import 'package:tezz_cafe_app/data/activate_table/data_source/activate_serice_repo.dart';
import 'package:tezz_cafe_app/data/activate_table/repository/activate_table_repository.dart';
import 'package:tezz_cafe_app/data/auth/data_source/auth_service_repo.dart';
import 'package:tezz_cafe_app/data/auth/repository/auth_repository.dart';
import 'package:tezz_cafe_app/data/category/data_source/category_service_repo.dart';
import 'package:tezz_cafe_app/data/category/repository/category_repository.dart';
import 'package:tezz_cafe_app/data/orders/data_source/orders_service_repo.dart';
import 'package:tezz_cafe_app/data/orders/repository/orders_repository.dart';
import 'package:tezz_cafe_app/data/product/data_source/product_service_repo.dart';
import 'package:tezz_cafe_app/data/product/repository/product_repository.dart';
import 'package:tezz_cafe_app/data/table/data_source/table_service_repo.dart';
import 'package:tezz_cafe_app/data/table/repository/table_repository.dart';
import 'package:tezz_cafe_app/data/waitress/data_source/waitress_data_source.dart';
import 'package:tezz_cafe_app/data/waitress/repository/waitress_repository.dart';
import 'package:tezz_cafe_app/data/zone/data_source/zone_service_repo.dart';
import 'package:tezz_cafe_app/data/zone/repository/zone_repository.dart';
import 'package:tezz_cafe_app/utils/di/dio_options.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupLocator() async {
  getIt.registerSingleton(DioSettings.getDio());
  // Auth
  getIt.registerSingleton(AuthService(DioSettings.getDio()));
  getIt.registerSingleton(AuthRepository(getIt<AuthService>()));
  // Zone
  getIt.registerSingleton(ZoneService(DioSettings.getDio()));
  getIt.registerSingleton(ZoneRepository(getIt<ZoneService>()));
  // Table
  getIt.registerSingleton(TableService(DioSettings.getDio()));
  getIt.registerSingleton(TableRepository(getIt<TableService>()));
  // Category
  getIt.registerSingleton(CategoryService(DioSettings.getDio()));
  getIt.registerSingleton(CategoryRepository(getIt<CategoryService>()));
  // Product
  getIt.registerSingleton(ProductService(DioSettings.getDio()));
  getIt.registerSingleton(ProductRepository(getIt<ProductService>()));
  // Order
  getIt.registerSingleton(OrderService(DioSettings.getDio()));
  getIt.registerSingleton(OrderRepository(getIt<OrderService>()));
  // Waitress
  getIt.registerSingleton(WaitressDataSource());
  getIt.registerSingleton(WaitressRepository(getIt<WaitressDataSource>()));

//   ActivateTableService
  getIt.registerSingleton(ActivateTableService(DioSettings.getDio()));
  getIt.registerSingleton(ActivateTableRepository(getIt<ActivateTableService>()));
}

void tearDownLocator() => getIt.reset();
