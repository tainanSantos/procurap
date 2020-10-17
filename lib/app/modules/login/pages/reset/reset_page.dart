import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/button_custom.dart';
import 'package:procurap/app/modules/components/dialog.dart';
import 'package:procurap/app/modules/home/pages/property/filter/filter_page.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';
import 'reset_controller.dart';

class ResetPage extends StatefulWidget {
  final String title;
  const ResetPage({Key key, this.title = "Redefinir Senha"}) : super(key: key);

  @override
  _ResetPageState createState() => _ResetPageState();
}

class _ResetPageState extends ModularState<ResetPage, ResetController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.primary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "E-mail",
                  hintText: "xxxxxxxx@gmail.com",
                  prefixIcon: Icon(Icons.email),
                  helperText: "Informe o email que você usa no App"),
            ),
            SizedBox(
              height: 20,
            ),
            ButtonCustom(
              title: "Enviar",
              onPressed: () {
                AlertDialogCustom.Simple(
                  context: context,
                  title:
                      "Em instantes você receberá um email com informações para resetar a  sua senha.",
                  onPressed: () {
                    Modular.to.pop();
                  },
                  titleOnpresesd: "Entedi!",
                );

                Timer(Duration(seconds: 3), () {
                  Navigator.pop(context);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
