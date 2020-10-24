import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:procurap/app/shared/models/tipo_hospedagem_model.dart';
import 'package:procurap/app/shared/services/custom_dio.dart';

class TipoHospedagemRepository {
  final CustomDio _dio;
  Response _response;

  TipoHospedagemRepository(this._dio);

  Future<ObservableList<TipoHospedagemModel>> getAll() async {
    try {
      this._response = await this
          ._dio
          .instance
          .get("http://10.0.2.2:8090/api/v1/tipo_hospedagens/");
      ObservableList<TipoHospedagemModel> tipoAnuncios =
          ObservableList<TipoHospedagemModel>();
      for (var json in ((_response.data) as List)) {
        TipoHospedagemModel tipo = TipoHospedagemModel.fromJson(json);
        tipoAnuncios.add(tipo);
      }
      return tipoAnuncios;
    } catch (error) {
      return error.responde.data;
    }
  }
}
