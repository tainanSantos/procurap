import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:procurap/app/shared/models/imagem_model.dart';
import 'package:procurap/app/shared/services/custom_dio.dart';
import 'package:procurap/app/shared/utils/urls.dart';

class ImagemRepository {
  Response _response;

  final CustomDio _dio;

  ImagemRepository(this._dio);

  Future<ObservableList<ImagemModel>> findAll() async {
    try {
      this._response = await this._dio.instance.get("${Urls.IMAGENS_IMOVEL}/");
      var imgs = ObservableList<ImagemModel>();
      for (var item in this._response.data) {
        var img = ImagemModel.fromJson(item);
        imgs.add(img);
      }
      return imgs;
    } catch (e) {
      return e.response.data;
    }
  }
}
