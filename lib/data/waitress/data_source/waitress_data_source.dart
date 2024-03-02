import 'package:dio/dio.dart';
import 'package:tezz_cafe_app/data/waitress/models/call_model.dart';
import 'package:tezz_cafe_app/data/waitress/models/table_waitress/table_model_waitress.dart';
import 'package:tezz_cafe_app/data/waitress/models/waitress_order/table_orders.dart';
import 'package:tezz_cafe_app/utils/di/dio_options.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_keys.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_repository.dart';

class WaitressDataSource {
  final Dio dio = DioSettings.getDio();

  Future<List<CallModel>> getWaitressCalls() async {
    try {
      final token = StorageRepository.getString(StorageKeys.token);
      final response =
          await dio.get('/waiters/tables/calls', options: Options(headers: {'Authorization': 'Bearer $token'}));
      if (response.statusCode == 200) {
        return (response.data as List).map((e) => CallModel.fromJson(e)).toList();
      }
      throw 'Failed to get calls ${response.statusCode} ${response.data}';
    } catch (e) {
      rethrow;
    }
  }

  Future<void> updateCallBack(String tableId) async {
    try {
      final token = StorageRepository.getString(StorageKeys.token);
      final response = await dio.put('/waiters/tables/$tableId/callback',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      if (response.statusCode == 200) {
        return;
      }
      throw 'Failed to perform callback ${response.statusCode} ${response.data}';
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteCallBack(String tableId) async {
    try {
      final token = StorageRepository.getString(StorageKeys.token);
      final response = await dio.delete('/waiters/tables/$tableId/callback',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      if (response.statusCode == 200) {
        return;
      }
      throw 'Failed to delete callback ${response.statusCode} ${response.data}';
    } catch (e) {
      rethrow;
    }
  }

  Future<List<TableModelWaitress>> getTables(String waitressId) async {
    try {
      final token = StorageRepository.getString(StorageKeys.token);
      final response =
          await dio.get('/waiters/$waitressId/tables', options: Options(headers: {'Authorization': 'Bearer $token'}));
      if (response.statusCode == 200) {
        return (response.data as List).map((e) => TableModelWaitress.fromJson(e)).toList();
      }
      throw 'Failed to get tables ${response.statusCode} ${response.data}';
    } catch (e) {
      rethrow;
    }
  }

  // /waiters/tables/orders?table=65d653b1c4485f20bdf5d917
  Future<TableOrders> getWaitressOrder(String tableId) async {
    try {
      final token = StorageRepository.getString(StorageKeys.token);
      final response = await dio.get('/waiters/tables/orders?table=$tableId',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      if (response.statusCode == 200) {
        return TableOrders.fromJson(response.data);
      }
      throw 'Failed to get orders ${response.statusCode} ${response.data}';
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteOrder(String tableId,String productId, num quantity) async {
    try {
      final token = StorageRepository.getString(StorageKeys.token);
      final response = await dio.delete('/orders/:id',
          data: {'table': tableId,'product': productId,'quantity': quantity},
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      if (response.statusCode == 200) {
        return;
      }
      throw 'Failed to delete order ${response.statusCode} ${response.data}';
    } catch (e) {
      rethrow;
    }
  }

  Future<void> closeOrder(String tableId,String productId, num quantity) async {
    try {
      final token = StorageRepository.getString(StorageKeys.token);
      final response = await dio.put('/approved/orders/:id',
          data: {'table': tableId,'product': productId,'quantity': quantity},
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      if (response.statusCode == 200) {
        return;
      }
      throw 'Failed to close order ${response.statusCode} ${response.data}';
    } catch (e) {
      rethrow;
    }
  }
}
