import 'package:dio/dio.dart';
import 'package:procurap/app/modules/home/modules/property/property_module.dart';
import 'package:procurap/app/modules/home/modules/rent/rent_module.dart';

import 'package:procurap/app/modules/home/pages/property_home/details/details_page.dart';
import 'package:procurap/app/modules/home/pages/property_home/filter/filter_page.dart';
import 'package:procurap/app/modules/home/pages/property_home/list/list_page.dart';
import 'package:procurap/app/modules/home/pages/user/pages/my_propertys.dart';

import 'package:procurap/app/modules/home/pages/user/user_controller.dart';
import 'package:procurap/app/modules/home/pages/favorites/favorites_controller.dart';
import 'package:procurap/app/modules/home/pages/property_home/list/list_page.dart';

import 'package:procurap/app/modules/home/pages/property_home/list/list_controller.dart';
import 'package:procurap/app/modules/home/pages/property_home/filter/filter_controller.dart';
import 'package:procurap/app/modules/home/pages/property_home/details/details_page.dart';
import 'package:procurap/app/modules/home/pages/property_home/filter/filter_page.dart';
import 'package:procurap/app/modules/home/pages/property_home/property_home_controller.dart';
import 'package:procurap/app/modules/home/repository/endereco_repository.dart';
import 'package:procurap/app/modules/home/repository/filter_repository.dart';
import 'package:procurap/app/modules/home/repository/imagem_repository.dart';
import 'package:procurap/app/modules/home/repository/imovel_repository.dart';
import 'package:procurap/app/modules/home/repository/tipo_anuncio_repository.dart';
import 'package:procurap/app/modules/home/repository/tipo_hospedagem_repository.dart';
import 'package:procurap/app/modules/home/repository/tipo_imovel_repository.dart';
import 'package:procurap/app/shared/repository/address_repository.dart';
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
        $HomeController,
        Bind((i) => PropertyHomeController(
              i.get<TipoAnuncioRepository>(),
              i.get<EnderecoRepository>(),
              i.get<TipoImovelRepository>(),
              i.get<TipoHospedagemRepository>(),
              i.get<ImovelRepository>(),
              i.get<ImagemRepository>(),
            )),
        Bind((i) => AddressRepository()),
        Bind((i) => TipoAnuncioRepository(i.get<CustomDio>())),
        Bind((i) => TipoImovelRepository(i.get<CustomDio>())),
        Bind((i) => ImagemRepository(i.get<CustomDio>())),
        Bind((i) => TipoHospedagemRepository(i.get<CustomDio>())),
        Bind((i) => EnderecoRepository(i.get<CustomDio>())),
        Bind((i) => ImovelRepository(i.get<CustomDio>())),
        Bind((i) => FilterRepository(i.get<CustomDio>())),
        Bind((i) => CustomDio()),
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
        ModularRouter('my_propertys',
            child: (_, args) => MyPropertys(),
            transition: TransitionType.fadeIn),
        ModularRouter('/property', module: PropertyModule()),
        ModularRouter('/rent', module: RentModule()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
