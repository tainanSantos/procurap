import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'reset_controller.g.dart';


@Injectable()
class ResetController = _ResetControllerBase with _$ResetController;

abstract class _ResetControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
  