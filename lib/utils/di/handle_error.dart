
import 'package:dio/dio.dart';
import 'package:tezz_cafe_app/utils/failures/failures.dart';

Failure handleDioError(DioException e) {
  if (e.response?.statusCode == 400) {
    return Failure("Bad request: ${e.response?.data}");
  } else if (e.response?.statusCode == 401) {
    return Failure("Unauthorized: ${e.response?.data}");
  } else if (e.response?.statusCode == 403) {
    return Failure("Forbidden: ${e.response?.data}");
  } else if (e.response?.statusCode == 404) {
    return Failure("Not found: ${e.response?.data}");
  }
  return Failure(e.message ?? '');
}
