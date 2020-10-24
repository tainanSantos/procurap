import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:procurap/app/shared/models/tipo_anuncio_model.dart';
import 'package:procurap/app/shared/services/custom_dio.dart';
import 'package:procurap/app/shared/utils/urls.dart';

class TipoAnuncioRepository {
  Response _response;

  final CustomDio _dio;
  TipoAnuncioRepository(this._dio);

  Future<ObservableList<TipoAnuncioModel>> getAll() async {
    print("A gente chegou aqui");
    try {
      this._response =
          await this._dio.instance.get("http://10.0.2.2:8090/api/v1/tipo_anuncios/");
      // return this._response.data;
      print("A gente chegou aqui 2 ");

      ObservableList<TipoAnuncioModel> tipoAnuncios =
          ObservableList<TipoAnuncioModel>();
      for (var json in ((_response.data) as List)) {
        TipoAnuncioModel tipo = TipoAnuncioModel.fromJson(json);
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
