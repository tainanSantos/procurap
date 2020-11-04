import 'package:procurap/app/modules/login/pages/register/register_page.dart';
import 'package:procurap/app/modules/login/pages/reset/reset_controller.dart';
import 'package:procurap/app/modules/login/pages/reset/reset_page.dart';

import 'package:procurap/app/modules/login/pages/register/register_controller.dart';
import 'package:procurap/app/modules/login/login_repository.dart';
import 'package:procurap/app/shared/services/custom_dio.dart';
import 'login_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'login_page.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $ResetController,
        $RegisterController,
        Bind((i) => LoginController(
              i.get<LoginRepository>(),
            )),
        Bind((i) => LoginRepository(i.get<CustomDio>()))
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => LoginPage()),
        ModularRouter('/register',
            child: (_, args) => RegisterPage(),
            transition: TransitionType.downToUp),
        ModularRouter('/reset',
            child: (_, args) => ResetPage(),
            transition: TransitionType.downToUp),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
