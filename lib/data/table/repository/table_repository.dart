import 'package:dartz/dartz.dart';
import 'package:tezz_cafe_app/data/table/data_source/table_service_repo.dart';
import 'package:tezz_cafe_app/data/table/models/table_model.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';

class TableRepository {
  final TableService _tableService;

  TableRepository(this._tableService);

  Future<Either<Failure, List<TableModel>>> getTablesByRestaurantId(String restaurantId) async {
    try {
      final tables = await _tableService.getTablesByRestaurantId(restaurantId);
      return Right(tables);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
