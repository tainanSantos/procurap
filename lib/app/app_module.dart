import 'package:procurap/app/modules/home/modules/property/property_module.dart';
import 'package:procurap/app/modules/home/modules/rent/rent_module.dart';
import 'package:procurap/app/modules/splash/splash_module.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:procurap/app/app_widget.dart';
import 'package:procurap/app/modules/home/home_module.dart';
import 'package:procurap/app/modules/login/login_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: SplashModule()),
        ModularRouter('/login', module: LoginModule()),
        ModularRouter('/home', module: HomeModule()),
   
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
