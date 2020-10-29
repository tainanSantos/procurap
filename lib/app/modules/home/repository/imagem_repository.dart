import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:mobx/mobx.dart';
import 'package:procurap/app/shared/models/imagem_model.dart';
import 'package:procurap/app/shared/services/custom_dio.dart';
import 'package:procurap/app/shared/utils/urls.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  Future<ImagemModel> save(ImagemModel imagen) async {
    print(imagen.url);
    print("A gente Cheegou na IMAGEm <<<<<<<<<<<");
    // File urlName;
    String url = imagen.url
        .replaceAll("/data/user/0/br.com.tainansantos.procurap/cache/", "");
    try {
      Dio dio = new Dio();

      FormData formData = FormData.fromMap({
        "id": "${imagen.id}",
        "imovel": '${imagen.imovel}',
        // "file": await MultipartFile.fromFile("./$url", filename: url),
      });

      print("ssss");
      formData.files.addAll(
        [
          MapEntry(
            "url",
            await MultipartFile.fromFile(imagen.url,
                filename: "teste.jpg", contentType: MediaType("image", "jpg")),
          ),
        ],
      );
      print("A gente Cheegou na IMAGEm <<<<<<<<<<<");

      SharedPreferences prefs = await SharedPreferences.getInstance();
      String token = await prefs.getString('token');

      this._response = await dio.post(
        "${Urls.IMAGENS_IMOVEL}/",
        data: formData,
        options: Options(
          headers: {
            'Accept': "application/json",
            'Authorization': '$token',
            // "Content-Type": "muiltipart/form-data"
          },
        ),
      );

      print(">>>>>>>>>>>>>>>>>>>>>>>>>");
      print(this._response.data);
      print(this._response.statusCode);
      print(">>>>>>>>>>>>>>>>>>>>>>>>>");
    } catch (e) {
      print("DEU ERRRO ");
      print(e.response.data);
      print(e.response.statusCode);
      print("DEU ERRRO ");

      // esse retorno tá errado
    }
  }

  submit(int id, int imovel, String url) async {
    FormData formData = FormData.fromMap({
      "id": "$id",
      "imovel": '$imovel',
    });

    formData.files.addAll(
      [
        MapEntry(
          "files",
          await MultipartFile.fromFile(url,
              filename: "NOMEDAIMAGEM.TIPO",
              contentType: new MediaType("image", "jpg")),
        ),
      ],
    );
  }
}
