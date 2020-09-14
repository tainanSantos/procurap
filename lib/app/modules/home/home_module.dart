import 'property/list/list_controller.dart';
import 'property/filter/filter_controller.dart';
import 'property/details/details_page.dart';
import 'property/filter/filter_page.dart';
import 'property/property_controller.dart';
import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [$ListController,
    $FilterController,
        $PropertyController,
        $HomeController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
        ModularRouter('details', child: (_, args) => DetailsPage(), transition: TransitionType.rightToLeft),
        ModularRouter('filter', child: (_, args) => FilterPage(), transition: TransitionType.upToDown),
     
      ];

  static Inject get to => Inject<HomeModule>.of();
}
