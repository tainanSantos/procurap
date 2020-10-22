import 'package:flutter/material.dart';
import 'package:procurap/app/modules/home/pages/property/components/card_custom_list.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';

class MyPropertys extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColor.primary2Filter,
        iconTheme: IconThemeData(),
        title: Text("Meus Imóveis", style: TextStyle(color: Colors.grey[900]),),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 5,
          ),
          CardCustomList(
            isFavorite: false,
            isFavoriteVisible: true,
            type: "Apartamento",
            addrens: "Serra Talhada - PE",
            value: "RS 300, 00",
            description: "4 quartos, 1 garagem, 2 banheiros, 2 banheiros, ",
            urlImage:
                "https://lrvimoveis.com.br/wp-content/uploads/2015/11/perspectiva-da-varanda-gourmet-do-graca-lummini-570x314.jpg",
          ),
          CardCustomList(
            isFavoriteVisible: true,
            type: "Apartamento",
            addrens: "Serra Talhada - PE",
            value: "RS 300, 00",
            description: "4 quartos, 1 garagem, 2 banheiros, 2 banheiros, ",
            urlImage:
                "https://images.homify.com/c_fill,f_auto,q_0,w_740/v1512476699/p/photo/image/2348043/reforma-apartamento-studio-batataes-odvo-06.jpg",
          ),
          CardCustomList(
            isFavoriteVisible: true,
            type: "Apartamento",
            addrens: "Serra Talhada - PE",
            value: "RS 300, 00",
            description: "4 quartos, 1 garagem, 2 banheiros, 2 banheiros, ",
            urlImage:
                "https://images.homify.com/c_fill,f_auto,q_0,w_740/v1512476699/p/photo/image/2348043/reforma-apartamento-studio-batataes-odvo-06.jpg",
          ),
        ],
      ),
    );
  }
}
