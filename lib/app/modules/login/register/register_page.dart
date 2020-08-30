import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'register_controller.dart';

class RegisterPage extends StatefulWidget {
  final String title;
  const RegisterPage({Key key, this.title = "Cadastro"}) : super(key: key);

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
        backgroundColor: Color.fromRGBO(74, 76, 255, 1),
        elevation: 0,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            ListTile(
              title: const Text('Deseja cadastrar seus imóveis o ap?'),
              leading: Radio(
                value: false,
                // groupValue: _character,
                onChanged: (value) {
                  setState(() {
                    // _character = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

}
