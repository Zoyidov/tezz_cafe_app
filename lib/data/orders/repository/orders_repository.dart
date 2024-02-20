import 'package:dartz/dartz.dart';
import 'package:tezz_cafe_app/data/orders/data_source/orders_service_repo.dart';
import 'package:tezz_cafe_app/data/orders/models/orders_model.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';

class OrderRepository {
  final OrderService _orderService;

  OrderRepository(this._orderService);

  Future<Either<Failure, List<OrdersModel>>> getOrdersByTableId(String tableId) async {
    try {
      final orders = await _orderService.getOrdersByTableId(tableId);
      return Right(orders);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, void>> createOrder(String tableId, String productId, int quantity) async {
    try {
      await _orderService.createOrder(tableId, productId, quantity);
      return const Right(null);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
