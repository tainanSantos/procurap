import 'package:dio/dio.dart';
import 'package:procurap/app/shared/exceptions/rest_exception.dart';
import 'package:procurap/app/shared/services/custom_dio.dart';
import 'package:procurap/app/shared/utils/urls.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginRepository {
  final CustomDio _dio;

  Response _response;

  LoginRepository(this._dio);

  Future<bool> login(String usuario, String senha) async {
    try {
      this._response = await _dio.instance.post(Urls.GET_TOKEN,
          data: {"username": "$usuario", "password": "$senha"});
      if (this._response.statusCode == 200 ||
          this._response.statusCode == 201) {
        String token = "${this._response.data['access']}";
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', 'Bearer $token');
        return true;
      }
    } on DioError catch (e) {
      String message = "Erro ao fazer login";
      if (e?.response?.statusCode == 401) {
        message = "Login ou senha inválidos";
      }
      throw (RestException(message));
    }
  }
}
