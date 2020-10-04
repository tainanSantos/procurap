import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/dialog.dart';
import 'package:procurap/app/modules/components/drop_down_custom.dart';
import 'package:procurap/app/modules/components/show_modal_cutom.dart';
import 'package:procurap/app/modules/home/home_page.dart';
import 'package:procurap/app/modules/home/property/components/card_custom_list.dart';
import 'package:procurap/app/modules/home/property/filter/filter_page.dart';
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

        title: Text("Meus Favoritos"),

        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                ShowModalCustom.show(context: context, widget: FilterPage());
              }),
          IconButton(
              icon: Icon(Icons.delete_outline),
              onPressed: () {
                AlertDialogCustom.Action(
                  context: context,
                  title: "Excluir Favoritos",
                  msg: "Deseja realmente excluir toda sua lista de Favorito?",
                  onPressed: () {
                    // Modular.to.pop();
                  },
                  text: "Sim",
                  onPressedCancel: () {
                    Modular.to.pop();
                  },
                  textCancel: "Não"
                );
              })
        ],
      ),
      body: SingleChildScrollView(
        // padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            CardCustomList(
              isFavorite: true,
              type: "Apartamento",
              addrens: "Serra Talhada - PE",
              value: "RS 300, 00",
              description:
                  "4 quartos, 1 sala, 1 garagem, 2 banheiros,1 garagem, 2 banheiros, ",
              urlImage:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRIljcyRfexDpcFcdds0rx99sJHmKNCItyriw&usqp=CAU",
            ),
          
          ],
        ),
      ),
    );
  }
}
