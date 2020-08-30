import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'login_controller.g.dart';

@Injectable()
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  bool visiblePass = true;

  @action
  setVisiblePass() => this.visiblePass = !this.visiblePass;

  @computed
  bool get getVisiblePass => this.visiblePass;
}
