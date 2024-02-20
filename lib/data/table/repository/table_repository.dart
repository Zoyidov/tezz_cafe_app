import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:tezz_cafe_app/data/table/data_source/table_service_repo.dart';
import 'package:tezz_cafe_app/data/table/models/table_model.dart';
import 'package:tezz_cafe_app/utils/di/handle_error.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';

class TableRepository {
  final TableService _tableService;
  final Dio _dio;

  TableRepository(this._tableService, this._dio);

  Future<Either<Failure, List<TableModel>>> getTablesByRestaurantId(String restaurantId) async {
    try {
      final tables = await _tableService.getTablesByRestaurantId(restaurantId);
      return Right(tables);
    } on DioException catch (e) {
      return Left(handleDioError(e));
    } on FormatException catch (e) {
      return Left(Failure(e.toString()));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, dynamic>> fetchWaitersTables(String baseUrl) async {
    try {
      final response = await _dio.get('$baseUrl/waiters/tables');
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        return Right(response.data);
      } else {
        return Left(Failure("Failed to fetch waiters tables. Status code: ${response.statusCode}"));
      }
    } catch (e) {
      return Left(Failure("Error fetching waiters tables: $e"));
    }
  }
}
