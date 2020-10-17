import 'pages/details_resnt/details_resnt_controller.dart';
import 'rent_controller.dart';
  import 'package:flutter_modular/flutter_modular.dart';

  import 'rent_page.dart';
  class RentModule extends ChildModule {
  @override
  List<Bind> get binds => [$DetailsResntController,$RentController,];

  @override
  List<ModularRouter> get routers => [ModularRouter(Modular.initialRoute, child: (_, args) => RentPage()),];

  static Inject get to => Inject<RentModule>.of();

}
  