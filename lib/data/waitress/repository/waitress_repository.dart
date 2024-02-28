import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:tezz_cafe_app/data/waitress/data_source/waitress_data_source.dart';
import 'package:tezz_cafe_app/data/waitress/models/call_model.dart';
import 'package:tezz_cafe_app/data/waitress/models/table_waitress/table_model_waitress.dart';
import 'package:tezz_cafe_app/data/waitress/models/waitress_order/order_waitress_model.dart';
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

  /// Update call back status from waitress server
  Future<Either<Failure, void>> updateCallBack(String tableId) async {
    try {
      await dataSource.updateCallBack(tableId);
      return const Right(null);
    } on DioException catch (e) {
      return Left(handleDioError(e));
    } on FormatException catch (e) {
      return Left(Failure("Error parsing data: ${e.message}"));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  /// Delete call back status from waitress server
  Future<Either<Failure, void>> deleteCallBack(String tableId) async {
    try {
      await dataSource.deleteCallBack(tableId);
      return const Right(null);
    } on DioException catch (e) {
      return Left(handleDioError(e));
    } on FormatException catch (e) {
      return Left(Failure("Error parsing data: ${e.message}"));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, List<TableModelWaitress>>> getTables(String waitressId) async {
    try {
      final response = await dataSource.getTables(waitressId);
      return Right(response);
    } on DioException catch (e) {
      return Left(handleDioError(e));
    } on FormatException catch (e) {
      return Left(Failure("Error parsing data: ${e.message}"));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, OrderWaitressModel>> getOrders(String tableId) async {
    try {
      final response = await dataSource.getWaitressOrder(tableId);
      return Right(response);
    }
    on DioException catch (e) {
      return Left(handleDioError(e));
    }
    on FormatException catch (e) {
      return Left(Failure("Error parsing data: ${e.message}"));
    }
    catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
