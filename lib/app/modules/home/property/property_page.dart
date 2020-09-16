import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
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
      appBar: AppBar(
        // backgroundColor: Color.fromRGBO(74, 76, 255, 1),
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
        // backgroundColor: Colors.blueGrey[800],
        elevation: 0,
        iconTheme: IconThemeData(),
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Modular.to.pushNamed("/home/filter");
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              // color: Color.fromRGBO(74, 76, 255, 1),
              // color: Color.fromRGBO(74, 76, 255, .fromRGBO(74, 76, 255, 1)1),
              height: height,
              // width: width,
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Encontre seu imóvel\ncom a gente",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Categorias",
                          style: TextStyle(color: Colors.black87),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black87,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Wrap(
                      children: [
                        cardCustom(
                            onTap: () {
                              Modular.to.pushNamed("/home/list");
                            },
                            title: "Apartamentos",
                            description: "Um lugar par você e sua \nfamília",
                            urlImage:
                                "https://abrilcasa.files.wordpress.com/2019/09/1-projeto-transforma-apartamento-em-espaco-integrado-e-atemporal.jpg?quality=95&strip=info&w=1024&h=682"),

                        // SliverToBoxAdapter(child: CardCustom(title: "Casa", description: "Para os melhores momentos", urlImage: "https://lh3.googleusercontent.com/proxy/OolUxyhlOYuqXybeyJZ3-JyXgFsgnoXzzzOcmwGT6-gvyXpmlQp7gHFM-hJoeL3GbJS0GaSIX2SZEcREC7tumSq2WeswDMCMpcxg6VZ5mNKHnU-YOPxWvFICkm6LcLYxbhM")),
                        cardCustom(
                            title: "Chacaras",
                            description:
                                "Paz, traquilidade e contato com a natureza",
                            urlImage:
                                "https://cf.bstatic.com/images/hotel/max1024x768/131/131193691.jpg"),
                        cardCustom(
                            title: "Flets",
                            description: "Conforto e bem-estar",
                            urlImage:
                                "https://images.homify.com/c_fill,f_auto,q_0,w_740/v1512476699/p/photo/image/2348043/reforma-apartamento-studio-batataes-odvo-06.jpg"),
                        cardCustom(
                            title: "Casa",
                            description: "Conforto e bem-estar",
                            urlImage:
                                "https://img-us-1.trovit.com/img1br/1z1_1T1DK1R0l/1z1_1T1DK1R0l.1_11.jpg"),
                        cardCustom(
                            title: "Flets",
                            description: "Conforto e bem-estar",
                            urlImage:
                                "https://images.homify.com/c_fill,f_auto,q_0,w_740/v1512476699/p/photo/image/2348043/reforma-apartamento-studio-batataes-odvo-06.jpg"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: width,
                    height: (height / 2) - 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // borderRadius: BorderRadius.only(
                      //   topLeft: Radius.circular(30),
                      //   topRight: Radius.circular(30),
                      // ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                "Destaques",
                                style: TextStyle(
                                    color: Colors.blueGrey[800],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
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
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Wrap(
                            children: [
                              cardDestaque(
                                  title: "Casa",
                                  descriptions: "Um quarto, uma sala de estar"),
                              cardDestaque(
                                  title: "Ap pequeno",
                                  descriptions: "Um quarto e cozinha"),
                              cardDestaque(
                                  title: "Garagem",
                                  descriptions: "50 metros quadrados"),
                              cardDestaque(
                                  title: "Galpão",
                                  descriptions: "400 metros quadrados"),
                            ],
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(left: 15, top: 20, bottom: 5),
                          child: Text(
                            "Divulge com a gente",
                            style: TextStyle(
                                color: Colors.blueGrey[800],
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: width,
                          margin: EdgeInsets.only(left: 15, right: 20, top: 5),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(74, 76, 255, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: RaisedButton(
                            color: Colors.transparent,
                            elevation: 0,
                            onPressed: () {},
                            child: Text(
                              "Quero divulgar um imóvel",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cardCustom(
          {String title,
          String description,
          String urlImage,
          Function onTap}) =>
      GestureDetector(
        onTap: onTap,
        child: Card(
          margin: EdgeInsets.only(left: 15, bottom: 15, top: 15, right: 5),
          elevation: 5,
          shape: RoundedRectangleBorder(
            // side: BorderSide(color: Colors.white70, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Material(
                color: Colors.transparent,
                elevation: 10,
                child: Container(
                  height: (MediaQuery.of(context).size.width / 2) - 20,
                  width: (MediaQuery.of(context).size.width / 1.8) - 10,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(urlImage)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
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
            side: BorderSide(color: Colors.white70, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            height: (MediaQuery.of(context).size.width / 2) - 120,
            width: (MediaQuery.of(context).size.width / 2) - 50,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 252, 252, 10),
              borderRadius: BorderRadius.circular(10),
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
