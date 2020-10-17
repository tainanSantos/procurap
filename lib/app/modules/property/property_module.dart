import 'package:procurap/app/modules/property/pages/new_property/addrens_page.dart';
import 'package:procurap/app/modules/property/pages/new_property/announcement_page.dart';
import 'package:procurap/app/modules/property/pages/new_property/complemet_page.dart';
import 'package:procurap/app/modules/property/pages/new_property/photos_page.dart';
import 'package:procurap/app/modules/property/pages/new_property/price_page.dart';
import 'package:procurap/app/shared/repository/address_repository.dart';

import 'property_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'property_page.dart';

class PropertyModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PropertyController(i.get<AddressRepository>())),
        Bind((i)=> AddressRepository())
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
