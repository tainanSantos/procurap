import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'favorites_controller.g.dart';


@Injectable()
class FavoritesController = _FavoritesControllerBase with _$FavoritesController;

abstract class _FavoritesControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
  