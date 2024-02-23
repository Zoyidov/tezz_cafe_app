import 'package:dio/dio.dart';
import 'package:tezz_cafe_app/data/auth/models/waitress_model.dart';

class AuthService {
  final Dio dio;

  AuthService(this.dio);

  Future<String> getToken(String phone, String password) async {
    try {
      final response = await dio.post('/auth/login', data: {'phone': phone, 'password': password});
      if (response.statusCode == 200) {
        return response.data;
      }
      throw 'Failed to get token ${response.statusCode} ${response.data}';
    } catch (e) {
      rethrow;
    }
  }

  Future<WaitressModel> getWaitress(String token) async {
    try {
      final response = await dio.get('/auth/me', options: Options(headers: {'Authorization': 'Bearer $token'}));
      if (response.statusCode == 200) {
        return WaitressModel.fromJson(response.data);
      }
      throw 'Failed to get token ${response.statusCode} ${response.data}';
    } catch (e) {
      rethrow;
    }
  }
}
