import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'details_resnt_controller.dart';

class DetailsResntPage extends StatefulWidget {
  final String title;
  const DetailsResntPage({Key key, this.title = "DetailsResnt"})
      : super(key: key);

  @override
  _DetailsResntPageState createState() => _DetailsResntPageState();
}

class _DetailsResntPageState
    extends ModularState<DetailsResntPage, DetailsResntController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
