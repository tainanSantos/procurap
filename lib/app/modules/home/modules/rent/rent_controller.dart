import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'rent_controller.g.dart';


@Injectable()
class RentController = _RentControllerBase with _$RentController;

abstract class _RentControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
  