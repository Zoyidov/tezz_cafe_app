import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:tezz_cafe_app/data/table/waitress/models/call_model.dart';
import 'package:tezz_cafe_app/utils/di/dio_options.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_keys.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_repository.dart';

class WaitressDataSource {
  final Dio dio = DioSettings.getDio();

  Future<List<CallModel>> getWaitressCalls() async {
    try {
      final token = StorageRepository.getString(StorageKeys.token);
      final response = await dio.get('/waiters/tables/calls', options: Options(headers: {'Authorization': 'Bearer $token'}));
      if (response.statusCode == 200) {
        return (response.data as List).map((e) => CallModel.fromJson(e)).toList();
      }
      throw 'Failed to get calls ${response.statusCode} ${response.data}';
    } catch (e) {
      rethrow;
    }
  }
}
