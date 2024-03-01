import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:tezz_cafe_app/data/orders/data_source/orders_service_repo.dart';
import 'package:tezz_cafe_app/data/table/models/table_model.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';

import '../../../utils/di/handle_error.dart';

class OrderRepository {
  final OrderService _orderService;

  OrderRepository(this._orderService);

  Future<Either<Failure, List<Orders>>> getOrdersByTableId(String tableId) async {
    try {
      final orders = await _orderService.getOrdersByTableId(tableId);
      return Right(orders);
    } on DioException catch (e) {
      return Left(handleDioError(e));
    } on FormatException catch (e) {
      return Left(Failure(e.toString()));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, void>> createOrder(String tableId, String productId, int quantity) async {
    try {
      await _orderService.createOrder(tableId, productId, quantity);
      return const Right(null);
    } on DioException catch (e) {
      return Left(handleDioError(e));
    } on FormatException catch (e) {
      return Left(Failure(e.toString()));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
