import 'dart:io';

import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'user_controller.g.dart';

@Injectable()
class UserController = _UserControllerBase with _$UserController;

abstract class _UserControllerBase with Store {
  @observable
  bool token;

  _UserControllerBase() {
    // verificar se exitet tokenzz
    // se existir, então modificar a tela de exibição
    veifi();
  }

  veifi() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = await prefs.getString("token");
    if (token != null) {
      this.token = true;
    } else {
      this.token = false;
    }
  }

  exitApp() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('token', null);
    exit(0);
  }

  @action
  setToken(value) => this.token = value;

  @computed
  bool get getToken => this.token;
}
