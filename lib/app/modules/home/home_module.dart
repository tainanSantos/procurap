import 'package:dio/dio.dart';

import 'package:procurap/app/modules/home/pages/property/details/details_page.dart';
import 'package:procurap/app/modules/home/pages/property/filter/filter_page.dart';
import 'package:procurap/app/modules/home/pages/property/list/list_page.dart';

import 'package:procurap/app/modules/home/pages/user/user_controller.dart';
import 'package:procurap/app/modules/home/pages/favorites/favorites_controller.dart';
import 'package:procurap/app/modules/home/pages/property/list/list_page.dart';

import 'package:procurap/app/modules/home/pages/property/list/list_controller.dart';
import 'package:procurap/app/modules/home/pages/property/filter/filter_controller.dart';
import 'package:procurap/app/modules/home/pages/property/details/details_page.dart';
import 'package:procurap/app/modules/home/pages/property/filter/filter_page.dart';
import 'package:procurap/app/modules/home/pages/property/property_controller.dart';
import 'package:procurap/app/modules/home/repositorys/filter_repository.dart';
import 'package:procurap/app/shared/services/custom_dio.dart';
import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
    
        $UserController,
        $FavoritesController,
        $ListController,
        $FilterController,
        $PropertyController,
        $HomeController,
        Bind((i)=>FilterRepository(i.get<CustomDio>())),
        Bind((i)=>CustomDio()),
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
      ];

  static Inject get to => Inject<HomeModule>.of();
}
