import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:tezz_cafe_app/data/table/data_source/table_service_repo.dart';
import 'package:tezz_cafe_app/data/table/models/table_model.dart';
import 'package:tezz_cafe_app/utils/di/handle_error.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';

class TableRepository {
  final TableService _tableService;

  TableRepository(this._tableService);

  Future<Either<Failure, List<TableModel>>> getTablesByRestaurantId(String restaurantId, bool occupied) async {
    try {
      final tables = await _tableService.getTablesByRestaurantId(restaurantId, occupied);
      return Right(tables);
    } on DioException catch (e) {
      return Left(handleDioError(e));
    } on FormatException catch (e) {
      return Left(Failure(e.toString()));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, void>> sendOrder({required String tableId, required String activeOrderId}) async {
    try {
      await _tableService.sendOrder(tableId: tableId, activeOrderId: activeOrderId);
      return const Right(null);
    } on DioException catch (e) {
      return Left(handleDioError(e));
    } on FormatException catch (e) {
      return Left(Failure(e.toString()));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
