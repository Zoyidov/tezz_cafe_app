import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:tezz_cafe_app/data/table/waitress/data_source/waitress_data_source.dart';
import 'package:tezz_cafe_app/data/table/waitress/models/call_model.dart';
import 'package:tezz_cafe_app/utils/di/handle_error.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';

class WaitressRepository {
  final WaitressDataSource dataSource;

  WaitressRepository(this.dataSource);

  /// Get calls from waitress server and return it as a list
  Future<Either<Failure, List<CallModel>>> getWaitressCalls() async {
    try {
      final response = await dataSource.getWaitressCalls();
      return Right(response);
    } on DioException catch (e) {
      return Left(handleDioError(e));
    } on FormatException catch (e) {
      return Left(Failure("Error parsing data: ${e.message}"));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
