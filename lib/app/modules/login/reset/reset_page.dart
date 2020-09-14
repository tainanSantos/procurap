import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'reset_controller.dart';

class ResetPage extends StatefulWidget {
  final String title;
  const ResetPage({Key key, this.title = "Redefinir Senha"}) : super(key: key);

  @override
  _ResetPageState createState() => _ResetPageState();
}

class _ResetPageState extends ModularState<ResetPage, ResetController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(74, 76, 255, 1),
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: "E-mail",
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(74, 76, 255, 1),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: RaisedButton(
                color: Colors.transparent,
                elevation: 0,
                onPressed: () {
                  _askedToLead();
                  // Modular.to.pop();
                  // Modular.to.pushNamed("/login");
                },
                child: Text(
                  "Enviar",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _askedToLead() async {
    switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text('Em instantes você receberá um e-mail com instruções para redefinir sua senha.'),
            children: <Widget>[
              // SimpleDialogOption(
              //   onPressed: () {
              //     Navigator.pop(
              //       context,
              //     );
              //   },
              //   child: const Text('Treasury department'),
              // ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: const Text('Ok'),
              ),
            ],
          );
        })) {
    }
  }

}
