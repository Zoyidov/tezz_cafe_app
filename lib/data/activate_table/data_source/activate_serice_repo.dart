import 'package:dio/dio.dart';

class ActivateTableService {
  final Dio dio;

  ActivateTableService(this.dio);

  Future<void> activateTable(String tableId) async {
    try {
      final response = await dio.post('/waiters/:id/tables', data: {'table': tableId});
      if (response.statusCode == 200) {
        return response.data;
      }
      throw 'Failed to activate table: ${response.statusCode} ${response.data}';
    } catch (e) {
      throw 'Failed to activate table: $e';
    }
  }
}