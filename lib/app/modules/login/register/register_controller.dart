import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'register_controller.g.dart';

@Injectable()
class RegisterController = _RegisterControllerBase with _$RegisterController;

abstract class _RegisterControllerBase with Store {
  var maskCpf = MaskTextInputFormatter(
      mask: "###.###.###-##", filter: {"#": RegExp(r'[0-9]')});

  @observable
  bool isRealtor; // corretor

  @observable
  bool isOwner; // porpriétário

  @observable
  String name;

  @observable
  String email;

  @observable
  String password;

  @observable
  String passwordValidate;

  @observable
  String cpf;

  @observable
  String crm;

  @action
  setIsRealtor(value) {
    this.isRealtor = value;
    this.isOwner = !value;
  }

  @action
  setIsOwner(value) {
    this.isOwner = value;
    this.isRealtor = !value;
  }

  @action
  setCheck(value) {
    if (value == "Corretor de Imóveis") {
      setIsRealtor(true);
    }
    if (value == "Proprietário de Imóveis") {
      setIsOwner(true);
    }
  }

  @computed
  bool get validatIsRealtor => this.isRealtor;

  @computed
  bool get validatIsOwner => this.isOwner;
}
