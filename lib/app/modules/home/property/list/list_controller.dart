import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'list_controller.g.dart';


@Injectable()
class ListController = _ListControllerBase with _$ListController;

abstract class _ListControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
  