import 'package:dio/dio.dart';
import 'package:procurap/app/shared/models/endereco_model.dart';
import 'package:procurap/app/shared/services/custom_dio.dart';
import 'package:procurap/app/shared/utils/urls.dart';

class EnderecoRepository {
  Response _response;

  Future<EnderecoModel> getAll() async {
    Dio _dio = Dio();
    try {
      this._response =
          await _dio.get("http://10.0.2.2:8090/api/v1/enderecos/");
      print( this._response.data);

    } catch (erro) {
      print("Deu erro");
      print(erro.respose.data);
    }

    print("Aqui a gente chegou 3");

    return null;
  }
}
