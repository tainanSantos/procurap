import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomInterceptos extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options) {
    // var userService = Modular.get<IUserService>();
    // var user = userService.getCurrentUser();

    // if(user?.token @= null && user.token.isNotEmpty){
    //   var headerAuth = 'Bearer ${user.token}';
    //   options.headers['Authorization']= headerAuth;

    // }
    // if(kDebugMode){
    //   debugPrint(json.encode("BaseURL: ${options.baseUrl}"));
    //   debugPrint(json.encode("Endpoint: ${options.path}"));
    //   if(options.headers['Authorization']!=null){
    //     debugPrint("Authorization: ${options.headers['Authorization']}")4;

    //   }
    //   if(options.data!=null){
    //     debugPrint("Payload ${json.emcode(options.data)}");
    //   }
    // }

    return super.onRequest(options);
  }

  @override
  Future onError(DioError err) async {
    // if (err.response.statusCode == 401) {
    //   var dio = Modular.get<DioForNative>();
    //   var userService = Modular.get<IUserService>();
    //   var user = userService.getCurrentUser();
    //   if (user != null && err.response.statusCode == 401) {
    //     var options = err.response.request;

    //     if (user.token == options.headers['Authorization']) {
    //       options.headers['Authorization'] = user.token;
    //       return dio.request(options.path, options: options);
    //     }
    //     dio.lock();
    //     dio.interceptors.responseLock.lock();
    //     dio.interceptors.errorLock.lock();

    //     return userService
    //         .login(
    //             AuthenticationModel(login: user.login, password: user.password))
    //         .then((result) {
    //       result.fold((_) {}, (user) {
    //         var _newToken = user.token;
    //         if (_newToken != null && _newToken.isNotEmpty) {
    //           var headerAuth = getTken(_newToken);
    //           options.headers['Authorization'] = headerAuth;
    //         }
    //       });
    //     }).whenComplete(() {
    //       dio.unlock();
    //       dio.interceptors.responseLock.unlock();
    //       dio.interceptors.errorLock.unlock();
    //       dio.interceptors.errorLock.unlock();
    //     }).then((e) => dio.request(options.path, options: options));
    //   }
    // } else {
    //   throw err;
    // }
  }

  @override
  Future onResponse(Response response) async {
    // if(response.request.extra.containsKey('refresh') && response.request.extra['refresh']){
    //   var cache = await _getCaChe(response.request.uri);

    //   if(cache ==null|| cache.expired){
    //     save(response.request.uri.toString(), response.data);
    //   }
    // }
    return super.onResponse(response);
  }
}
