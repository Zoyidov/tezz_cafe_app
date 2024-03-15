import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:tezz_cafe_app/data/auth/data_source/auth_service_repo.dart';
import 'package:tezz_cafe_app/data/auth/models/waitress_model.dart';
import 'package:tezz_cafe_app/utils/di/handle_error.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';

class AuthRepository {
  AuthService authService;

  AuthRepository(this.authService);

  Future<Either<Failure, String>> getToken(
    String phone,
    String password,
  ) async {
    try {
      final response = await authService.getToken(phone, password);
      return Right(response);
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        return Left(Failure("Unauthorized: ${e.response?.data['error']}"));
      }
      return Left(handleDioError(e));
    } on FormatException catch (e) {
      return Left(Failure("Error parsing data: ${e.message}"));
    } catch (e) {
      return Left(FailureGetToken(e.toString()));
    }
  }

  Future<Either<Failure, WaitressModel>> getWaitress(String token) async {
    try {
      final response = await authService.getWaitress(token);
      return Right(response);
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        return Left(Failure("Unauthorized: ${e.response?.data['error']}"));
      }
      return Left(handleDioError(e));
    } on FormatException catch (e) {
      return Left(Failure("Error parsing data: ${e.message}"));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
