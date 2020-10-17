import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'property_controller.dart';

class PropertyPage extends StatefulWidget {
  
  final String title;
  const PropertyPage({Key key, this.title = "Property"}) : super(key: key);

  @override
  _PropertyPageState createState() => _PropertyPageState();
}

class _PropertyPageState extends ModularState<PropertyPage, PropertyController> {
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
  