import 'package:dio/dio.dart';
import 'package:tezz_cafe_app/data/zone/models/zone_model.dart';

class ZoneService {
  final Dio dio;

  ZoneService(this.dio);

  Future<List<ZoneModel>> getAllZones() async {
    try {
      final response = await dio.get('/tables/type');
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
