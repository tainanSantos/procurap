import 'package:dio/dio.dart';

class CustomDio {
  var _dio;

  CustomDio() {
    _dio = Dio();
  }

  CustomDio.withAutentication() {
    _dio = Dio();
    _dio.interceptors.add(InterceptorsWrapper(
        onRequest: _onRequest, onResponse: _onResponse, onError: _onError));

  }

  Dio get instance => _dio;

  _onRequest(RequestOptions options) async {
    print("REQUEST >>> ${options.data}");
    return options;
  }


  _onResponse(Response response) async {
    print("RESPONSE >>> ${response.data}");
    return response;
  }


  _onError(DioError error) async {
    print(
        "\n\nDEU ERRO >>> DATA >>> ${error.response.data}; CODE >>> ${error.response.statusCode}; MSG >>> ${error.message}\n\n");
    return error;
  }
  
}


// enum DioErrorType {
//   /// When opening  url timeout, it occurs.
//   CONNECT_TIMEOUT,

//   ///It occurs when receiving timeout.
//   RECEIVE_TIMEOUT,

//   /// When the server response, but with a incorrect status, such as 404, 503...
//   RESPONSE,

//   /// When the request is cancelled, dio will throw a error with this type.
//   CANCEL,

//   /// Default error type, Some other Error. In this case, you can
//   /// read the DioError.error if it is not null.
//   DEFAULT,
// }
