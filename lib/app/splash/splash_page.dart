import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/logo_app.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';

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
    // // fazer aqui a verificação do token
    // // se existir manda pra /home se não existir manda pra /login
    // Future.delayed(Duration(milliseconds: 1500)).then((value) {
    // });

    Timer(Duration(seconds: 2), () {
      Modular.to.popAndPushNamed("/login");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(74, 76, 255, 1),
      backgroundColor: CustomColor.primary,
      body: Center(
        child: LogoApp(),
      ),
    );
  }
}
