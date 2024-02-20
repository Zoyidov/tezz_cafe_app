import 'package:dio/dio.dart';
import 'package:tezz_cafe_app/data/category/models/category_model.dart';

class CategoryService {
  final Dio dio;

  CategoryService(this.dio);

  Future<List<CategoryModel>> getAllCategories(String restaurantId) async {
    try {
      final response = await dio.get('/categories?restaurant=$restaurantId');
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
