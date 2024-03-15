import 'package:dio/dio.dart';
import 'package:tezz_cafe_app/data/product/models/product_model.dart';

class ProductService {
  final Dio dio;

  ProductService(this.dio);

  Future<List<ProductModel>> getProductsByRestaurantAndCategory(
      String restaurantId, String categoryId) async {
    try {
      final response = await dio
          .get('/products?restaurant=$restaurantId&category=$categoryId');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => ProductModel.fromJson(json)).toList();
      } else {
        throw 'Failed to get products: ${response.statusCode} ${response.data}';
      }
    } catch (e) {
      rethrow;
    }
  }
}
