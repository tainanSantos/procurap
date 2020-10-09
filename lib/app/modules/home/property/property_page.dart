import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/dialog.dart';
import 'package:procurap/app/modules/components/logo_app.dart';
import 'package:procurap/app/modules/components/show_modal_cutom.dart';
import 'package:procurap/app/modules/home/property/components/card_custom_list.dart';
import 'package:procurap/app/modules/home/property/filter/filter_page.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';
import 'property_controller.dart';

class PropertyPage extends StatefulWidget {
  @override
  _PropertyPageState createState() => _PropertyPageState();
}

class _PropertyPageState
    extends ModularState<PropertyPage, PropertyController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: CustomColor.primary,
          title: LogoApp(),
          leading: PopupMenuButton(
            onSelected: (value) {
              switch (value) {
                case 1:
                  Modular.to.pushReplacementNamed("/login");

                  break;
                case 2:
                  break;
                case 3:
                  break;
                default:
              }
            },
            icon: Icon(Icons.menu),
            itemBuilder: (_) => [
              PopupMenuItem(value: 1, child: Text("Divulgar meu imóvel")),
              PopupMenuItem(value: 2, child: Text("Sobre")),
              PopupMenuItem(value: 3, child: Text("Tutórial")),
            ],
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Modular.to.pushNamed("/home/filter");
                ShowModalCustom.show(context: context, widget: FilterPage());
              },
            ),
            IconButton(
              icon: Icon(Icons.map),
              onPressed: () {
                AlertDialogCustom.Msg(
                    context: context, title: "Não Implementado", i: 3);
                Timer(Duration(seconds: 1), () => Modular.to.pop());
              },
            )
          ],
        ),
        body: ListView(
          children: [
            CardCustomList(
              isFavorite: false,
              type: "Apartamento",
              addrens: "Serra Talhada - PE",
              value: "RS 300, 00",
              description:
                  "4 quartos, 1 sala, 1 garagem, 2 banheiros,1 garagem, 2 banheiros, ",
              urlImage:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRIljcyRfexDpcFcdds0rx99sJHmKNCItyriw&usqp=CAU",
            ),
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
        ));
  }

  Widget rowTitle(String tittleRow) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              tittleRow,
              style: TextStyle(
                color: Colors.blueGrey[800],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: Colors.blueGrey[800],
            ),
          )
        ],
      );

  Widget cardCustom(
          {String title,
          String description,
          String urlImage,
          Function onTap}) =>
      GestureDetector(
        onTap: onTap,
        child: Card(
          margin: EdgeInsets.only(left: 15, bottom: 15, top: 15, right: 5),
          elevation: 2,
          shape: RoundedRectangleBorder(
            // side: BorderSide(color: Colors.white70, width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Material(
                color: Colors.transparent,
                elevation: 2,
                child: Container(
                  height: (MediaQuery.of(context).size.width / 2) - 20,
                  width: (MediaQuery.of(context).size.width / 1.8) - 10,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(urlImage)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Colors.blueGrey,
                        Colors.blueGrey[700],
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: (MediaQuery.of(context).size.width / 1.8) - 10,
                height: 90,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.blueGrey[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      description,
                      style: TextStyle(
                        color: Colors.blueGrey[400],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget cardDestaque({String title, String descriptions}) => GestureDetector(
        child: Card(
          elevation: 2,
          margin: EdgeInsets.only(left: 15, bottom: 15, top: 10, right: 5),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Container(
            height: 80,
            width: (MediaQuery.of(context).size.width / 2) - 50,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              // direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.blueGrey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text(
                    descriptions,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
