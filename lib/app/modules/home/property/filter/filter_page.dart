import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'filter_controller.dart';

class FilterPage extends StatefulWidget {
  
  final String title;
  const FilterPage({Key key, this.title = "Filter"}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends ModularState<FilterPage, FilterController> {
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
  