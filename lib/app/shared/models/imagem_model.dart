import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';

class ImagemModel {
  int id;
  int imovel;
  String url;

  ImagemModel({this.id, this.imovel, this.url});

  ImagemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imovel = json['imovel'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['imovel'] = this.imovel;
    data['url'] = this.url;
    return data;
  }
}


