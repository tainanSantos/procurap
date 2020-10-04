import 'user/user_controller.dart';
import 'property/new_property/new_property_controller.dart';
import 'property/new_property/new_property_page.dart';
import 'favorites/favorites_controller.dart';
import 'package:procurap/app/modules/home/property/list/list_page.dart';

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
  List<Bind> get binds => [
        $UserController,
        $NewPropertyController,
        $FavoritesController,
        $ListController,
        $FilterController,
        $PropertyController,
        $HomeController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
        ModularRouter('details',
            child: (_, args) => DetailsPage(),
            transition: TransitionType.rightToLeft),
        ModularRouter('filter',
            child: (_, args) => FilterPage(),
            transition: TransitionType.rightToLeft),
        ModularRouter('list',
            child: (_, args) => ListPage(),
            transition: TransitionType.rightToLeft),
        ModularRouter('newproperty',
            child: (_, args) => NewPropertyPage(),
            transition: TransitionType.rightToLeft),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
