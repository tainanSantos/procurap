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
  String usuario;

  @observable
  String senha;

  @action
  setUsuario(String value) => this.usuario = value;

  @action
  setSenha(String value) => this.senha = value;

  @observable
  bool visiblePass = true;

  @action
  setVisiblePass() => this.visiblePass = !this.visiblePass;

  @computed
  bool get getVisiblePass => this.visiblePass;
}
