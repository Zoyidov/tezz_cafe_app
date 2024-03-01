import 'package:dio/dio.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_keys.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_repository.dart';

class ActivateTableService {
  final Dio dio;

  ActivateTableService(this.dio);

  Future<void> activateTable(String tableId) async {
    try {
      final token = StorageRepository.getString(StorageKeys.token);
      final response = await dio.post('/waiters/:id/tables', data: {'table': tableId}, options: Options(headers: {'Authorization': 'Bearer $token'}));
      if (response.statusCode == 200) {
        return;
      }
      throw 'Failed to activate table: ${response.statusCode} ${response.data}';
    } catch (e) {
      rethrow;
    }
  }
}
