import 'reset/reset_controller.dart';
import 'package:procurap/app/modules/login/register/register_page.dart';
import 'package:procurap/app/modules/login/reset/reset_page.dart';

import 'register/register_controller.dart';
import 'login_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'login_page.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $ResetController,
        $RegisterController,
        $LoginController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => LoginPage()),
        ModularRouter('/register',
            child: (_, args) => RegisterPage(),
            transition: TransitionType.downToUp),
        ModularRouter('/reset',
            child: (_, args) => ResetPage(),
            transition: TransitionType.
            downToUp),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
