import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initModule();
  }

  initModule() async {
    // fazer aqui a verificação do token
    // se existir manda pra /home se não existir manda pra /login
    Future.delayed(Duration(milliseconds: 1500)).then((value) {
      Modular.to.popAndPushNamed("/login");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(74, 76, 255, 1),
      body: Center(
        child: Container(
          child: Wrap(
            // crossAxisAlignment: CrossAxisAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.end,

            children: [
              Container(
                padding: EdgeInsets.only(bottom: 3),
                child: Text(
                  "PROCUR",
                  style: TextStyle(
                    color: Colors.white,
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
        ),
      ),
    );
  }
}
