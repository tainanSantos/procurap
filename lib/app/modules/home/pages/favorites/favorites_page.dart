import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/dialog.dart';
import 'package:procurap/app/modules/components/drop_down_custom.dart';
import 'package:procurap/app/modules/components/show_modal_cutom.dart';
import 'package:procurap/app/modules/home/home_page.dart';
import 'package:procurap/app/modules/home/pages/property_home/components/card_custom_list.dart';
import 'package:procurap/app/modules/home/pages/property_home/filter/filter_page.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';
import 'favorites_controller.dart';

class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState
    extends ModularState<FavoritesPage, FavoritesController> {
  //use 'controller' variable to access controller
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.primary,
        // elevation: 0,
        centerTitle: true,
        title: Text("Meus favoritos"),

        actions: [
          // IconButton(
          //   icon: Icon(Icons.search),
          //   onPressed: () {
          //     ShowModalCustom.show(context: context, widget: FilterPage());
          //   },
          // ),
        ],
      ),
      body: SingleChildScrollView(
        // padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            // CardCustomList(
            //   isFavorite: true,
            //   type: "Apartamento",
            //   addrens: "Serra Talhada - PE",
            //   value: "RS 300, 00",
            //   description:
            //       "4 quartos, 1 sala, 1 garagem, 2 banheiros,1 garagem, 2 banheiros, ",
            //   urlImage:
            //       "https://lrvimoveis.com.br/wp-content/uploads/2015/11/perspectiva-da-varanda-gourmet-do-graca-lummini-570x314.jpg",
            // ),
          ],
        ),
      ),
    );
  }
}
