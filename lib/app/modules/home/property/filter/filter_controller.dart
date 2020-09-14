import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'filter_controller.g.dart';


@Injectable()
class FilterController = _FilterControllerBase with _$FilterController;

abstract class _FilterControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
  