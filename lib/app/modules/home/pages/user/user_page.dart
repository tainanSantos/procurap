import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/button_custom.dart';
import 'package:procurap/app/modules/home/pages/user/pages/user_info.dart';
import 'user_controller.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends ModularState<UserPage, UserController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: controller.getToken
          ? UserInfo()
          : Center(
              child: Container(
                  child: Wrap(
                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Container(
                    width: 150,
                    child: ButtonCustom(
                      radius: 5,
                      title: "Entrar",
                      onPressed: () {
                        Modular.to.pushReplacementNamed("/login");
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Faça login para poder cadastrar \nseus imóveis",
                    textAlign: TextAlign.center,
                  )
                ],
              )),
            ),
    );
  }
}
