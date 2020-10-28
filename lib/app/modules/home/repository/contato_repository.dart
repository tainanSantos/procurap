import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:procurap/app/shared/models/contato_model.dart';
import 'package:procurap/app/shared/services/custom_dio.dart';
import 'package:procurap/app/shared/utils/urls.dart';

class ContatoRepository {
  Response _response;
  final CustomDio _dio;

  ContatoRepository(this._dio);

  Future<ObservableList<ContatoModel>> findAll() async {
    try {
      this._response = await _dio.instance.get("${Urls.CONTATOS}/");
      var contatos = ObservableList<ContatoModel>();
      for (var item in this._response.data) {
        ContatoModel cont = ContatoModel.fromJson(item);
        contatos.add(cont);
      }
      return contatos;
    } catch (e) {
      return e.response.data;
    }
  }

  Future<ObservableList<ContatoModel>> save(List<ContatoModel> contatos) async {
    try {
      var contatos = ObservableList<ContatoModel>();

      for (var contato in contatos) {
        this._response = await _dio.instance
            .post("${Urls.CONTATOS}/", data: contato.toJson());
        ContatoModel cont = ContatoModel.fromJson(this._response.data);
        contatos.add(cont);
      }
      return contatos;
    } catch (e) {
      // esse retorno tá errado
      return e.response.data;
    }
  }
}
