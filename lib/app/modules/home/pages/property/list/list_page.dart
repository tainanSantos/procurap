import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/show_modal_cutom.dart';
import 'package:procurap/app/modules/home/pages/property/filter/filter_page.dart';
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
          FlatButton(
            child: Text(
              "Filtros",
              style: TextStyle(color: CustomColor.primaryAnction),
            ),
            onPressed: () {
              // Modular.to.pushNamed("/home/filter");
              ShowModalCustom.show(context: context, widget: FilterPage());
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            cardCustom2(
              type: "Apartamento",
              addrens: "Serra Talhada - PE",
              value: "RS 300, 00",
              description:
                  "4 quartos, 1 sala, 1 garagem, 2 banheiros,1 garagem, 2 banheiros, ",
              urlImage:
                  "https://images.homify.com/c_fill,f_auto,q_0,w_740/v1512476699/p/photo/image/2348043/reforma-apartamento-studio-batataes-odvo-06.jpg",
            ),
            cardCustom2(
              type: "Apartamento",
              addrens: "Serra Talhada - PE",
              value: "RS 300, 00",
              description:
                  "4 quartos, 1 sala, 1 garagem, 2 banheiros,1 garagem, 2 banheiros, ",
              urlImage:
                  "https://s3.amazonaws.com/static.nidoimovel.com.br/19ca14e7ea6328a42e0eb13d585e4c22/imovel/PJ/PJ51701/c424fb2721f6a524c16404e75bb70a8a.jpg?1591970826",
            ),
            cardCustom2(
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

  Widget cardCustom2(
          {String type,
          String addrens,
          String urlImage,
          String value,
          String description,
          bool
              isFavorite // componente para gerencia de estados do botão faorito

          }) =>
      GestureDetector(
        onTap: () {
          Modular.to.pushNamed("/home/details");
        },
        child: Card(
          margin: EdgeInsets.all(7),
          elevation: 2,
          shape: RoundedRectangleBorder(
            // side: BorderSide(color: Colors.white70, width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Text(
                      type,
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, top: 5, bottom: 15),
                    child: Text(
                      addrens,
                      style: TextStyle(
                        color: Colors.blueGrey[900],
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                    ),
                  ),
                  Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      urlImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, top: 15, bottom: 0),
                              child: Text(
                                value,
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey[900],
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, top: 5, bottom: 15),
                              child: Text(
                                description,
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          icon: Icon(Icons.favorite_border),
                          onPressed: () {},
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
