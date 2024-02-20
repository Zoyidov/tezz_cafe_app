import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:tezz_cafe_app/data/category/models/category_model.dart';
import 'package:tezz_cafe_app/utils/di/dio_options.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_keys.dart';
import 'package:tezz_cafe_app/utils/local_storage/storage_repository.dart';

class CategoryService {
  final Dio dio;

  CategoryService(this.dio);

  Future<List<CategoryModel>> getAllCategories(String restaurantId) async {
    try {
      final token = StorageRepository.getString(StorageKeys.token);
      final response = await dio.get('/categories?restaurant=$restaurantId',
          // options: DioSettings.getOptions().copyWith(policy: CachePolicy.refresh).toOptions()..headers = {'Authorization': 'Bearer $token'}
          options: Options(headers: {'Authorization': 'Bearer $token'}),
          );
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => CategoryModel.fromJson(json)).toList();
      } else {
        throw 'Failed to get categories: ${response.statusCode} ${response.data}';
      }
    } catch (e) {
      rethrow;
    }
  }

// Future<CategoryModel?> getCategoryById(String id) async {
//   try {
//     final response = await dio.get('/categories/$id');
//     if (response.statusCode == 200) {
//       return CategoryModel.fromJson(response.data);
//     } else if (response.statusCode == 404) {
//       return null; // Category not found
//     } else {
//       throw 'Failed to get category: ${response.statusCode} ${response.data}';
//     }
//   } catch (e) {
//     rethrow;
//   }
// }
}
