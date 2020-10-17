import 'package:flutter/material.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';

AppBar appBarCutom() {
  return AppBar(
    backgroundColor: CustomColor.primary2,
    title: Text(
      "Cadastro do Imóvel",
    ),
    actions: [
      // IconButton(
      //   icon: Icon(
      //     Icons.edit,
      //   ),
      //   onPressed: () {},
      // ),
      // IconButton(
      //   icon: Icon(
      //     Icons.save,
      //   ),
      //   onPressed: () {
      //     // AlertDialogCustom.Msg(context: context, title: "Salvando...", i: 1);
      //   },
      // ),
    ],
  );
}
