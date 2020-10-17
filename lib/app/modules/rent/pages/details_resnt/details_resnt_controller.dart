import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'details_resnt_controller.g.dart';


@Injectable()
class DetailsResntController = _DetailsResntControllerBase with _$DetailsResntController;

abstract class _DetailsResntControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
  