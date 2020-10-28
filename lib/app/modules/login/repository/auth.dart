import 'package:dio/dio.dart';
import 'package:procurap/app/shared/services/custom_dio.dart';
import 'package:procurap/app/shared/utils/urls.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Auth {
  var _dio = CustomDio.withAutentication();
  Response _response;

  Future<bool> login(String usuario, String senha) async {
    try {
      this._response = await _dio.instance.post(Urls.GET_TOKEN,
          data: {"username": "$usuario", "password": "$senha"});
      if (this._response.statusCode == 200 ||
          this._response.statusCode == 201) {
        // vamos salta o toke e o nome do uauário
        // e o tipo de usuário também mas dessa vez não
        String token = "${this._response.data['access']}";
        print("TOKEN >>> $token");
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString("usuario", usuario);
        await prefs.setString('token', 'Bearer $token');
        return true;
      }
    } catch (e) {
      return false;
    }
  }
}
