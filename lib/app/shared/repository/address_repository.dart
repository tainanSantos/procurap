import 'package:dio/dio.dart';
import 'package:procurap/app/shared/models/address_model.dart';
import 'package:procurap/app/shared/services/custom_dio.dart';

class AddressRepository {
  Future<AddressModel> getByCep(String cep) async {
    print("A gente che");
    print(cep);
    try {
      Response resp = await CustomDio()
          .instance
          .get("https://viacep.com.br/ws/${cep}/json/");
      if (resp.statusCode == 200 || resp.statusCode == 201) {
        return AddressModel.fromJson(resp.data);
      }
    } catch (e) {
      return null;
    }
  }
}
