import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'property_controller.g.dart';


@Injectable()
class PropertyController = _PropertyControllerBase with _$PropertyController;

abstract class _PropertyControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
  