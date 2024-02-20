import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:logger/logger.dart';
import 'package:tezz_cafe_app/utils/constants/api_constants.dart';

class DioSettings {
  static final Dio _dio = Dio();

  static BaseOptions getBaseOptions() {
    return BaseOptions(
      baseUrl: ApiConstants.baseUrl, // Replace with your API base URL
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    );
  }

  static Dio getDio() {
    // final Dio dio = Dio(getBaseOptions());
    _dio.options = getBaseOptions();
    // Add an interceptor to log requests and responses
    _dio.interceptors.add(
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

    return _dio;
  }

  static CacheOptions getOptions() {
    final options = CacheOptions(
      // A default store is required for interceptor.
      store: MemCacheStore(),
      // Returns a cached response on error but for statuses 401 & 403.
      // Also allows to return a cached response on network errors (e.g. offline usage).
      // Defaults to [null].
      hitCacheOnErrorExcept: [401, 403],
      // Overrides any HTTP directive to delete entry past this duration.
      // Useful only when origin server has no cache config or custom behaviour is desired.
      // Defaults to [null].
      maxStale: const Duration(hours: 1),
    );
    return options;
  }
}
