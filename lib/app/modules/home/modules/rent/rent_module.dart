import 'rent_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'rent_page.dart';

class RentModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $RentController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => RentPage(), transition: TransitionType.fadeIn),
      ];

  static Inject get to => Inject<RentModule>.of();
}
