import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/button_custom.dart';
import 'package:procurap/app/modules/components/logo_app.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';
import 'register_controller.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState
    extends ModularState<RegisterPage, RegisterController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cadastro"),
          backgroundColor: CustomColor.primary,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          height: MediaQuery.of(context).size.height * 0.5,
          child: ListView(
            children: [
              _textField(labelText: "Nome Completo", icon: Icons.person),
              _textField(labelText: "E-mail", icon: Icons.email),
              _textField(labelText: "Senha", icon: Icons.vpn_key),
              _textField(labelText: "Repetir Senha", icon: Icons.vpn_key),
              SizedBox(
                height: 20,
              ),
              ButtonCustom(
                title: "Cadastrar-se",
                onPressed: () {
                  Modular.to.pop();
                  Modular.to.pushReplacementNamed("/home");
                },
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        )
        // SingleChildScrollView(
        // child: Column(
        //   children: <Widget>[
        //     Container(
        //       height: MediaQuery.of(context).size.height * 0.5,
        //       color: CustomColor.primary,
        //       child: Stack(
        //         children: [
        //           Positioned(
        //             top: 30,
        //             left: 10,
        //             child: IconButton(
        //               icon: Icon(
        //                 Icons.arrow_back,
        //                 color: Colors.white,
        //               ),
        //               onPressed: () {
        //                 Modular.to.pop();
        //               },
        //             ),
        //           ),
        //           Align(
        //             child: LogoApp(),
        //             alignment: Alignment.center,
        //           ),
        //           Positioned(
        //             left: 30,
        //             bottom: 5,
        //             child: Text("Cadastro",
        //                 style: TextStyle(
        //                     color: Colors.white,
        //                     fontWeight: FontWeight.bold,
        //                     fontSize: 25)),
        //           ),
        //         ],
        //       ),
        //     ),

        //   ],
        // ),
        // ),
        );
  }

  Widget _textField({String labelText, IconData icon}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: TextField(
        decoration:
            InputDecoration(labelText: labelText, prefixIcon: Icon(icon)),
      ),
    );
  }
}
