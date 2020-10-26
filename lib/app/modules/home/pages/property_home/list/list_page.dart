import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/show_modal_cutom.dart';
import 'package:procurap/app/modules/home/pages/property_home/components/card_custom_list.dart';
import 'package:procurap/app/modules/home/pages/property_home/filter/filter_page.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';
import 'list_controller.dart';

class ListPage extends StatefulWidget {
  final String title;
  const ListPage({Key key, this.title = "Apartamentos"}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends ModularState<ListPage, ListController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color.fromRGBO(74, 76, 255, 1),
        backgroundColor: CustomColor.primary,

        title: Text("Apartamentos"),
        actions: [
        
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardCustomList(
              type: "Apartamento",
              addrens: "Serra Talhada - PE",
              value: "RS 300, 00",
              description:
                  "4 quartos, 1 sala, 1 garagem, 2 banheiros,1 garagem, 2 banheiros, ",
              urlImage:
                  "https://images.homify.com/c_fill,f_auto,q_0,w_740/v1512476699/p/photo/image/2348043/reforma-apartamento-studio-batataes-odvo-06.jpg",
            ),
            CardCustomList(
              type: "Apartamento",
              addrens: "Serra Talhada - PE",
              value: "RS 300, 00",
              description:
                  "4 quartos, 1 sala, 1 garagem, 2 banheiros,1 garagem, 2 banheiros, ",
              urlImage:
                  "https://s3.amazonaws.com/static.nidoimovel.com.br/19ca14e7ea6328a42e0eb13d585e4c22/imovel/PJ/PJ51701/c424fb2721f6a524c16404e75bb70a8a.jpg?1591970826",
            ),
            CardCustomList(
              type: "Apartamento",
              addrens: "Serra Talhada - PE",
              value: "RS 300, 00",
              description:
                  "4 quartos, 1 sala, 1 garagem, 2 banheiros,1 garagem, 2 banheiros, ",
              urlImage:
                  "https://s2.glbimg.com/9zr9ECC9A4F0YvrWT5yePB3rRI0=/smart/e.glbimg.com/og/ed/f/original/2015/09/10/apartamento-32m-adriana-fontana-09.jpg",
            ),
          ],
        ),
      ),
    );
  }
}
