import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:tezz_cafe_app/utils/constants/api_constants.dart';


class DioOptions {
  static BaseOptions getBaseOptions() {
    return BaseOptions(
      baseUrl: ApiConstants.baseUrl, // Replace with your API base URL
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    );
  }

  static Dio getDio() {
    final Dio dio = Dio(getBaseOptions());

    // Add an interceptor to log requests and responses
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // options.headers.addAll({'Authorization': ApiConstants.token});
          // Log request data
          Logger().w('REQUEST[${options.method}] => ${options.uri}');
          Logger().w('Headers: ${options.headers}');
          Logger().w('Data: ${options.data ?? ''}');
          return handler.next(options);
        },
        onResponse: (response, handler) {
          // Log response data
          Logger().i('RESPONSE[${response.statusCode}] => ${response.requestOptions.uri}');
          Logger().i('Headers: ${response.headers}');
          Logger().i('Data: ${response.data ?? ''}');
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          // Log error data
          Logger().e('ERROR[${e.response?.statusCode}] => ${e.requestOptions.uri}');
          Logger().e('Message: ${e.message}');
          Logger().e('Response: ${e.response?.data ?? ''}');
          return handler.next(e);
        },
      ),
    );

    return dio;
  }
}
