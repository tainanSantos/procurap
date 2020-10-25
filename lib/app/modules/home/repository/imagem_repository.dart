import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:procurap/app/shared/models/imagem_model.dart';
import 'package:procurap/app/shared/services/custom_dio.dart';

class ImagemRepository {
  Response _response;

  final CustomDio _dio;

  ImagemRepository(this._dio);

  Future<ObservableList<ImagemModel>> findAll(int idImovel){

  }

}
