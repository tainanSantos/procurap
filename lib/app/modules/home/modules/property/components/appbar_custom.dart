import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';

AppBar appBarCutom() {
  return AppBar(
    // iconTheme: IconThemeData(color: CustomColor.primary),
    // backgroundColor: Colors.white,
    backgroundColor: CustomColor.primary,
    // elevation: 0,
    // elevation: 0,
    // leading: IconButton(
    //     icon: Icon(Icons.arrow_back_ios),
    //     onPressed: () {
    //       Modular.to.pop();
    //     }),
    title: Text(
      "Cadastro imóvel",
      style: TextStyle(
        // color: CustomColor.primary,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
