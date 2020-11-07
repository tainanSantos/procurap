import 'package:flutter/material.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';

AppBar appBarCutom() {
  return AppBar(
    backgroundColor: CustomColor.primary,
    // backgroundColor: Colors.pink,
    // iconTheme: IconThemeData(color: Colors.grey[800]),
    // centerTitle: true,
    elevation: 0,
    title: Text(
      "Novo imóvel",
      style: TextStyle(
        // color: Colors.grey[800],
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
