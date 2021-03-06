import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:procurap/app/shared/models/endereco_model.dart';
import 'package:procurap/app/shared/services/custom_dio.dart';
import 'package:procurap/app/shared/utils/urls.dart';

class EnderecoRepository {
  Response _response;

  final CustomDio _dio;

  EnderecoRepository(this._dio);

  Future<ObservableList<EnderecoModel>> findAll() async {
    try {
      this._response = await _dio.instance.get("${Urls.ENDERECO}/");
      return ((this._response.data as List)
              .map((element) => EnderecoModel.fromJson(element))
              .toList())
          .asObservable();
      // var listEnderecos = ObservableList<EnderecoModel>();
      // for (var item in this._response.data) {
      //   listEnderecos.add(EnderecoModel.fromJson(item));
      // }
      // return listEnderecos;
    } catch (erro) {
      return erro.respose.data;
    }
  }

  Future<EnderecoModel> findById(int id) async {
    try {
      this._response = await _dio.instance.get("${Urls.ENDERECO}/${id}");
      return EnderecoModel.fromJson(this._response.data);
    } catch (erro) {
      return erro.respose.data;
    }
  }

  Future<EnderecoModel> delete(int id) async {
    print("ID >>> $id");
    try {
      this._response = await _dio.instance.delete("${Urls.ENDERECO}/${id}/");
      return EnderecoModel.fromJson(this._response.data);
    } catch (erro) {
      print("DEU ERRO");
      return null;
      // return erro.respose.data;
    }
  }

  Future<EnderecoModel> save(EnderecoModel enderecoModel) async {
    try {
      this._response = await _dio.instance
          .post("${Urls.ENDERECO}/", data: enderecoModel.toJson());
      EnderecoModel endereco = EnderecoModel.fromJson(this._response.data);
      return endereco;
    } catch (e) {
      return e.response.data;
    }
  }
}
