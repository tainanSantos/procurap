import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
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
      backgroundColor: Color.fromRGBO(74, 76, 255, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height / 2,
              child: Stack(
                children: [
                  Container(
                    color: Color.fromRGBO(74, 76, 255, 1),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.all(20),
                          // decoration: const BoxDecoration(
                          //   borderRadius: BorderRadius.all(Radius.circular(20)),
                          //     border: Border(
                          //   top: BorderSide(
                          //       width: 1.0, color: Colors.white),
                          //   left: BorderSide(
                          //       width: 1.0, color: Colors.white),
                          //   right: BorderSide(
                          //       width: 1.0, color: Colors.white),
                          //   bottom: BorderSide(
                          //       width: 1.0, color: Colors.white),
                          // )),
                          height: height / 7,
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.end,
                            children: [
                              Wrap(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.end,

                                children: [
                                  Container(
                                    padding: EdgeInsets.only(bottom: 3),
                                    child: Text(
                                      "PROCUR",
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "AP",
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              // Icon(
                              //   Icons.home,
                              //   color: Colors.white,
                              //   size: height / 10,
                              // ),
                              // Icon(
                              //   Icons.search,
                              //   color: Colors.white,
                              //   size: 25,
                              // ),
                            ],
                          )
                          // child: Image.asset('assets/images/home.png'),
                          )),
                  Positioned(
                    left: 30,
                    bottom: 5,
                    child: Text("LOGIN",
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
                          "CADASTRE-SE",
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
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              height: height / 2,
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: "Usuário",
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
                            labelText: "Senha",
                            prefixIcon: Icon(Icons.vpn_key),
                            suffixIcon: IconButton(
                                icon: Icon(controller.getVisiblePass
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                onPressed: () {
                                  controller.setVisiblePass();
                                }),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        height: 50,
                        width: width,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(74, 76, 255, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: RaisedButton(
                          color: Colors.transparent,
                          elevation: 0,
                          onPressed: () {
                            Modular.to.pushNamed("/home");
                          },
                          child: Text(
                            "ENTRAR",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
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
