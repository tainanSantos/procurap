import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'user_controller.g.dart';


@Injectable()
class UserController = _UserControllerBase with _$UserController;

abstract class _UserControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
  