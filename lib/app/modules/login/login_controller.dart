import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/login/login_repository.dart';
import 'package:procurap/app/shared/exceptions/rest_exception.dart';

part 'login_controller.g.dart';

@Injectable()
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final LoginRepository loginRepository;

  _LoginControllerBase(this.loginRepository) {
    setLoad(true);
  }

  @observable
  String msgErro;

  @observable
  bool visiblePass = true;

  @observable
  bool respApi;

  @observable
  bool load;

  @observable
  String usuario;

  @observable
  String senha;

  @action
  setUsuario(String value) => this.usuario = value;

  @action
  setSenha(String value) => this.senha = value;

  @action
  setLoad(bool value) => this.load = value;

  @action
  setMsgErro(value) => this.msgErro = value;

  @computed
  bool get getLogin =>
      (this.usuario == null || this.usuario.isEmpty) ? true : false;

  @computed
  bool get getsenha =>
      (this.senha == null || this.senha.isEmpty) ? true : false;

  @computed
  String get getMsgErro => this.msgErro;

  @computed
  bool get getLoad => this.load;

  Future<void> fazerLogin() async {
    print("Fazendo Login");
    setMsgErro(null);
    setLoad(true);
    try {
      this.respApi = await this.loginRepository.login(this.usuario, this.senha);
      if (this.respApi) {
        setLoad(false);

        Modular.to.pushReplacementNamed("/home");
      }
    } on RestException catch (e) {
      Modular.to.pop(); // para feixar a parada lá do load
      print(e.message);
      setMsgErro(e.message);
    }
  }

  @action
  setVisiblePass() => this.visiblePass = !this.visiblePass;

  @computed
  bool get getVisiblePass => this.visiblePass;
}
