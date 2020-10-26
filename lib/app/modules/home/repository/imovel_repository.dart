import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:procurap/app/shared/models/imovel_model.dart';
import 'package:procurap/app/shared/services/custom_dio.dart';
import 'package:procurap/app/shared/utils/urls.dart';

class ImovelRepository {
  Response _response;

  final CustomDio _dio;

  ImovelRepository(this._dio);

  Future<ObservableList<ImovelModel>> findAll() async {
    try {
      this._response = await _dio.instance.get("${Urls.IMOVEL}");
      var imoveis = ObservableList<ImovelModel>();

      for (var item in this._response.data) {
        ImovelModel imovel = ImovelModel.fromJson(item);
        imoveis.add(imovel);
      }

      return imoveis;
    } catch (e) {
      return e.response.data;
    }
  }


  Future<ImovelModel> findById(int id) async {
    try {
      this._response = await _dio.instance.get("${Urls.IMOVEL}/${id}");
      return ImovelModel.fromJson(this._response.data);
    } catch (e) {
      return e.response.data;
    }
  }

  
}
