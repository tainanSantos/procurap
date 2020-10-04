import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
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
        backgroundColor: CustomColor.primary,
        elevation: 0,
        title: Text("Cadastro"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            // ListTile(
            //   title: const Text('Deseja cadastrar seus imóveis o ap?'),
            //   leading: Radio(
            //     value: false,
            //     // groupValue: _character,
            //     onChanged: (value) {
            //       setState(() {
            //         // _character = value;
            //       });
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

}
