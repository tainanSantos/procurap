import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'gallery_controller.dart';

class GalleryPage extends StatefulWidget {
  

  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends ModularState<GalleryPage, GalleryController> {
  //use 'controller' variable to access controller
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Imagens"),
      ),
      backgroundColor: Colors.black,
      body: Container()
    );
  }
}
  