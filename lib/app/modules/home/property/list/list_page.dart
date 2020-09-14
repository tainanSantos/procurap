import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'list_controller.dart';

class ListPage extends StatefulWidget {
  
  final String title;
  const ListPage({Key key, this.title = "List"}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends ModularState<ListPage, ListController> {
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
  