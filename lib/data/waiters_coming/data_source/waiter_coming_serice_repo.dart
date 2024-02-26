import 'package:dio/dio.dart';
import 'package:tezz_cafe_app/data/waiters_coming/model/waiter_coming_model.dart';
import 'package:tezz_cafe_app/utils/di/dio_options.dart';

class WaiterComingService {
  final Dio dio = DioSettings.getDio();

  WaiterComingService();

  Future<List<WaiterComingModel>> fetchWaiterComing() async {
    try {
      final response = await dio.get('/waiters/tables');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => WaiterComingModel.fromJson(json)).toList();
      } else {
        throw Exception('Failed to fetch waiter coming models: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to fetch waiter coming models: $e');
    }
  }



  Future<void> updateWaiterComing(String id) async {
    try {
      final response = await dio.post('/waiters/tables/$id/callback');
      if (response.statusCode != 200) {
        throw Exception('Failed to perform callback for table: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to perform callback for table: $e');
    }
  }

  Future<void> deleteWaiterComing(String id) async {
    try {
      await dio.delete('/waiters/tables/$id/callback');
    } catch (e) {
      throw Exception('Failed to delete waiter coming model: $e');
    }
  }
}
