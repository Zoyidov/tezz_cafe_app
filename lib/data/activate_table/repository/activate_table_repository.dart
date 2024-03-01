import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:tezz_cafe_app/data/activate_table/data_source/activate_serice_repo.dart';
import 'package:tezz_cafe_app/utils/di/handle_error.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';

class ActivateTableRepository {
  final ActivateTableService activateTableService;

  ActivateTableRepository(this.activateTableService);

  Future<Either<Failure, void>> activateTable(String tableId) async {
    try {
      await activateTableService.activateTable(tableId);
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
