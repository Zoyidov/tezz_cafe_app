import 'package:dio/dio.dart';
import 'package:tezz_cafe_app/data/zone/models/zone_model.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_keys.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_repository.dart';

class ZoneService {
  final Dio dio;

  ZoneService(this.dio);

  Future<List<ZoneModel>> getAllZones() async {
    try {
      final token = StorageRepository.getString(StorageKeys.token);
      final response = await dio.get('/tables/type',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => ZoneModel.fromJson(json)).toList();
      } else {
        throw 'Failed to get zones: ${response.statusCode} ${response.data}';
      }
    } catch (e) {
      rethrow;
    }
  }
}
