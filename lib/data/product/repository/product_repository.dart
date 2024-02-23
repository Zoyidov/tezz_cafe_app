import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:tezz_cafe_app/data/product/data_source/product_service_repo.dart';
import 'package:tezz_cafe_app/data/product/models/product_model.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';

import '../../../utils/di/handle_error.dart';

class ProductRepository {
  final ProductService _productService;

  ProductRepository(this._productService);

  Future<Either<Failure, List<ProductModel>>> getProductsByRestaurantAndCategory(
      String restaurantId, String categoryId) async {
    try {
      final products =
          await _productService.getProductsByRestaurantAndCategory(restaurantId, categoryId);
      return Right(products);
    } on DioException catch (e) {
      return Left(handleDioError(e));
    } on FormatException catch (e) {
      return Left(Failure(e.toString()));
    }catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
