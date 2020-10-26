import 'package:procurap/app/modules/home/modules/property/pages/new_property/addrens_page.dart';
import 'package:procurap/app/modules/home/modules/property/pages/new_property/announcement_page.dart';
import 'package:procurap/app/modules/home/modules/property/pages/new_property/complemet_page.dart';
import 'package:procurap/app/modules/home/modules/property/pages/new_property/photos_page.dart';
import 'package:procurap/app/modules/home/modules/property/pages/new_property/price_page.dart';
import 'package:procurap/app/modules/home/repository/endereco_repository.dart';
import 'package:procurap/app/modules/home/repository/tipo_anuncio_repository.dart';
import 'package:procurap/app/modules/home/repository/tipo_hospedagem_repository.dart';
import 'package:procurap/app/modules/home/repository/tipo_imovel_repository.dart';

import 'package:procurap/app/shared/repository/address_repository.dart';
import 'package:procurap/app/shared/services/custom_dio.dart';

import 'property_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'property_page.dart';

class PropertyModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PropertyController(
            i.get<AddressRepository>(),
            i.get<TipoAnuncioRepository>(),
            i.get<EnderecoRepository>(),
            i.get<TipoImovelRepository>(),
            i.get<TipoHospedagemRepository>())),
        Bind((i) => AddressRepository()),
        Bind((i) => EnderecoRepository(i.get<CustomDio>())),
        Bind((i) => TipoHospedagemRepository(i.get<CustomDio>())),
        Bind((i) => TipoAnuncioRepository(i.get<CustomDio>())),
        Bind((i) => TipoImovelRepository(i.get<CustomDio>())),
        Bind((i) => CustomDio())
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => PropertyPage()),
        ModularRouter('announcement',
            child: (_, args) => AnnouncementPage(),
            transition: TransitionType.fadeIn),
        ModularRouter('addrens',
            child: (_, args) => AddrensPage(),
            transition: TransitionType.fadeIn),
        ModularRouter('complemet',
            child: (_, args) => ComplemetPage(),
            transition: TransitionType.fadeIn),
        ModularRouter('price',
            child: (_, args) => PricePage(), transition: TransitionType.fadeIn),
        ModularRouter('photos',
            child: (_, args) => PhotosPage(),
            transition: TransitionType.fadeIn),
      ];

  static Inject get to => Inject<PropertyModule>.of();
}
