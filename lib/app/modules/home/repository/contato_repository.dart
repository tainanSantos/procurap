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

  Future<ContatoModel> save(ContatoModel contato) async {
    try {
      this._response =
          await _dio.instance.post("${Urls.CONTATOS}/", data: contato.toJson());
      return ContatoModel.fromJson(_response.data);
    } catch (e) {
      // esse retorno tá errado
      print("Erro ao salvar o contato");
      return e.response.data;
    }
  }
}
