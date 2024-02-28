import 'package:dio/dio.dart';
import 'package:tezz_cafe_app/data/waitress/models/waitress_order/order_waitress_model.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_keys.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_repository.dart';

class OrderService {
  final Dio dio;

  OrderService(this.dio);

  /// Get orders

  Future<List<Orders>> getOrdersByTableId(String tableId) async {
    try {
      final response = await dio.get('/orders?table=$tableId');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => Orders.fromJson(json)).toList();
      } else {
        throw 'Failed to get orders: ${response.statusCode} ${response.data}';
      }
    } catch (e) {
      rethrow;
    }
  }

  /// Create an order
  Future<void> createOrder(String tableId, String productId, int quantity) async {
    try {
      final token = StorageRepository.getString(StorageKeys.token);
      final response = await dio.post(
        '/orders',
        data: {"table": tableId, "product": productId, "quantity": quantity},
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 201) {
        return;
      }
      throw 'Failed to create order: ${response.statusCode} ${response.data}';
    } catch (e) {
      rethrow;
    }
  }
}
