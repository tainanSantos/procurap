import 'package:flutter/material.dart';

// https://pub.dev/packages/photo_view

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        title: Text("Galerria"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Center(
          child: Image.network(
            "https://lrvimoveis.com.br/wp-content/uploads/2015/11/perspectiva-da-varanda-gourmet-do-graca-lummini-570x314.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
