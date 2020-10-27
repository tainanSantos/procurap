import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/button_custom.dart';
import 'package:procurap/app/modules/components/logo_app.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      // backgroundColor: Color.fromRGBO(74, 76, 255, 1),
      backgroundColor: CustomColor.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height / 2,
              child: Stack(
                children: [
                  Container(
                    color: CustomColor.primary,
                    // color: Color.fromRGBO(74, 76, 255, 1),
                  ),
                  Align(child: LogoApp()),
                  Positioned(
                    left: 30,
                    bottom: 5,
                    child: Text("Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25)),
                  ),
                  Positioned(
                    right: 30,
                    bottom: 5,
                    child: GestureDetector(
                      onTap: () {
                        Modular.to.pushNamed("/login/register");
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 25),
                        child: Text(
                          "Cadastre-se",
                          style: TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              // margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    // topLeft: Radius.circular(20),
                    // topRight: Radius.circular(20),
                    // bottomLeft: Radius.circular(10),
                    // bottomRight: Radius.circular(10),
                    ),
              ),
              height: (height * 0.5),
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: "Usuário",
                          hintText: "usuario@gmail.com",
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Observer(
                        builder: (_) => TextField(
                          obscureText: controller.getVisiblePass,
                          decoration: InputDecoration(
                            // counterText: "cacca",
                            // helperText: "sjdjdj",
                            hintText: "************",
                            labelText: "Senha",
                            prefixIcon: Icon(Icons.vpn_key),
                            suffixIcon: IconButton(
                              icon: Icon(controller.getVisiblePass
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                controller.setVisiblePass();
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ButtonCustom(
                        title: "Entar",
                        onPressed: () async {
                          
                         await controller.auth
                              .login(controller.usuario, controller.senha);
                          Modular.to.pushReplacementNamed("/home");
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Modular.to.pushNamed('/login/reset');
                        },
                        child: Text("Esqueceu sua Senha?"),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
