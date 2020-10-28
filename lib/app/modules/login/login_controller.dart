import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/login/repository/auth.dart';

part 'login_controller.g.dart';

@Injectable()
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final Auth auth;

  _LoginControllerBase(this.auth);

  @observable
  bool visiblePass = true;

  @observable
  bool respApi;

  @observable
  bool isLogin = false;

  @observable
  String usuario;

  @observable
  String senha;

  @action
  setUsuario(String value) => this.usuario = value;

  @action
  setSenha(String value) => this.senha = value;

  @action
  setIsLogin(bool value) => this.isLogin = value;

  @computed
  bool get getIsLogin => this.isLogin;

  fazerLogin() async {
    this.respApi = await this.auth.login(this.usuario, this.senha);
    if (this.respApi) {
      setIsLogin(true);
    } else {
      // que dizer que deu erro no lógin
      setIsLogin(false);
    }
  }

  @action
  setVisiblePass() => this.visiblePass = !this.visiblePass;

  @computed
  bool get getVisiblePass => this.visiblePass;
}
