import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/home/user/components/user_info.dart';
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
      body: UserInfo()
      // body: Center(
      //   child: Container(
      //     width: MediaQuery.of(context).size.width / 3,
      //     child: ButtonCustom(
      //       title: "Entrar",
      //       onPressed: (){},
      //     ),
      //   ),
      // ),
    );
  }
}
