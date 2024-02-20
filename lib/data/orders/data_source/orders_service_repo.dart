import 'package:dio/dio.dart';
import 'package:tezz_cafe_app/data/orders/models/orders_model.dart';

class OrderService {
  final Dio dio;

  OrderService(this.dio);


  /// Get orders

  Future<List<OrdersModel>> getOrdersByTableId(String tableId) async {
    try {
      final response = await dio.get('/orders?table=$tableId');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => OrdersModel.fromJson(json)).toList();
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
      final Map<String, dynamic> requestBody = {
        'table': tableId,
        'products': [
          {
            'product': productId,
            'quantity': quantity,
          }
        ],
      };

      final response = await dio.post('/orders', data: requestBody);

      if (response.statusCode == 201) {
      } else {
        throw 'Failed to create order: ${response.statusCode} ${response.data}';
      }
    } catch (e) {
      rethrow;
    }
  }

}
