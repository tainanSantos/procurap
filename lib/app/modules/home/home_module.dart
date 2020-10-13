import 'package:procurap/app/modules/home/property/details/gallery/gallery_page.dart';
import 'package:procurap/app/modules/home/property/new_property/pages/addrens/addrens_page.dart';
import 'package:procurap/app/modules/home/property/new_property/pages/complemet/complemet_page.dart';
import 'package:procurap/app/modules/home/property/new_property/pages/photos/photos_page.dart';
import 'package:procurap/app/modules/home/property/new_property/pages/price/price_page.dart';
import 'package:procurap/app/shared/repository/address_repository.dart';
import 'package:procurap/app/shared/services/custom_dio.dart';

import 'user/user_controller.dart';
import 'property/new_property/new_property_controller.dart';
import 'property/new_property/new_property_page.dart';
import 'property/new_property/pages/announcement/announcement_page.dart';
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

        Bind((i) => NewPropertyController(i.get<AddressRepository>())),
        Bind((i)=> AddressRepository())


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
        ModularRouter('announcement',
            child: (_, args) => AnnouncementPage(),
            transition: TransitionType.fadeIn),
        ModularRouter('addrens',
            child: (_, args) => AddrensPage(),
            transition: TransitionType.fadeIn),
        ModularRouter('complemet',
            child: (_, args) => ComplemetPage(),
            transition: TransitionType.fadeIn),
        ModularRouter('gallery',
            child: (_, args) => GalleryPage(),
            transition: TransitionType.fadeIn),
        ModularRouter('price',
            child: (_, args) => PricePage(), transition: TransitionType.fadeIn),
        ModularRouter('photos',
            child: (_, args) => PhotosPage(),
            transition: TransitionType.fadeIn),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
