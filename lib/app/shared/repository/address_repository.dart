import 'package:dio/dio.dart';
import 'package:procurap/app/shared/exceptions/rest_exception.dart';
import 'package:procurap/app/shared/models/address_model.dart';
import 'package:procurap/app/shared/services/custom_dio.dart';

class AddressRepository {
  Response _response;

  Future<AddressModel> getByCep(String cep) async {
    
    try {
      this._response = await CustomDio()
          .instance
          .get("https://viacep.com.br/ws/${cep}/json/");
      return AddressModel.fromJson(this._response.data);
    } on DioError catch (e) {
      print(e.message);
      print("Deu erro");
      throw (RestException("message"));
    }
  }
}
