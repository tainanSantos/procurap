import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:procurap/app/shared/models/tipo_imovel_model.dart';
import 'package:procurap/app/shared/services/custom_dio.dart';

class TipoImovelRepository {
   Response _response;

  final CustomDio _dio;
  TipoImovelRepository(this._dio);

  Future<ObservableList<TipoImovelModel>> getAll() async {
    print("A gente chegou aqui");
    try {
      this._response =
          await this._dio.instance.get("http://10.0.2.2:8090/api/v1/tipo_imoveis/");
      // return this._response.data;
      print("A gente chegou aqui 2 ");

      ObservableList<TipoImovelModel> tipoAnuncios =
          ObservableList<TipoImovelModel>();
      for (var json in ((_response.data) as List)) {
        TipoImovelModel tipo = TipoImovelModel.fromJson(json);
        tipoAnuncios.add(tipo);
      }
      print("A gente chegou aqui 3 ");
      return tipoAnuncios;
    } catch (error) {
      print("Deu erro");
      return error.responde.data;
    }
  }
  
}
