import 'package:dartz/dartz.dart';
import 'package:tezz_cafe_app/data/category/data_source/category_service_repo.dart';
import 'package:tezz_cafe_app/data/category/models/category_model.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';

class CategoryRepository {
  final CategoryService _categoryService;

  CategoryRepository(this._categoryService);

  Future<Either<Failure, List<CategoryModel>>> getAllCategories(String restaurantId) async {
    try {
      final categories = await _categoryService.getAllCategories(restaurantId);
      return Right(categories);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
