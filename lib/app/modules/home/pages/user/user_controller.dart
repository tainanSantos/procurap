import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'user_controller.g.dart';

@Injectable()
class UserController = _UserControllerBase with _$UserController;

abstract class _UserControllerBase with Store {
  @observable
  bool token = false;

  _UserControllerBase() {
    // verificar se exitet token
    // se existir, então modificar a tela de exibição
  }

  veifi() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String user = prefs.getString("usuario");
    String token = prefs.getString("token");
    if (token != null) {
      this.token = true;
    } else {
      this.token = false;
    }
  }

  @action
  setToken(value) => this.token = value;

  @computed
  bool get getToken => this.token;
}
