import 'package:dio/dio.dart';
import 'package:tezz_cafe_app/data/table/models/table_model.dart';

class TableService {
  final Dio dio;

  TableService(this.dio);

  Future<List<TableModel>> getTablesByRestaurantId(String restaurantId) async {
    try {
      final response = await dio.get('/tables?restaurant=$restaurantId');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => TableModel.fromJson(json)).toList();
      } else {
        throw 'Failed to get tables: ${response.statusCode} ${response.data}';
      }
    } catch (e) {
      rethrow;
    }
  }

}
