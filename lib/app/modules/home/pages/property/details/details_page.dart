import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/home/modules/property/property_controller.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final propertyController = Modular.get<PropertyController>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: CustomColor.primary,
            expandedHeight: 250,
            floating: true,
            pinned: true,
            actions: [
              // IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
              FlatButton(
                onPressed: () {
                  Modular.to.pushNamed("/home/gallery");
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.photo_library,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Galeria",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: _cardTop(
                  "https://lrvimoveis.com.br/wp-content/uploads/2015/11/perspectiva-da-varanda-gourmet-do-graca-lummini-570x314.jpg"),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              // padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5, right: 5, top: 5),
                        child: ListTile(
                          // leading: Icon(Icons.home),
                          title: Text(
                            "${propertyController.tipoImovel.nome}",
                          ),
                          // subtitle: Text("Apartamento de frete para o mar"),
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(right: 25, left: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: ListTile(
                                title: Text(
                                  "Aluguel",
                                ),
                                leading: Icon(Icons.monetization_on),
                              ),
                              width: MediaQuery.of(context).size.width / 2,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "R\$ ${propertyController.aluguel}0",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.teal[700],
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                        "/${propertyController.tipoHospedagem.nome}")
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 25, left: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: ListTile(
                                title: Text(
                                  "Venda",
                                ),
                                leading: Icon(Icons.monetization_on),
                              ),
                              width: MediaQuery.of(context).size.width / 2,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "R\$ ${propertyController.precoImovel}0",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.teal[700],
                                          fontWeight: FontWeight.bold),
                                    ),
                                    // Text("/${propertyController.precoImovel}")
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.airline_seat_individual_suite),
                          title: Text("Quartos"),
                          trailing: Text(
                            "${propertyController.numQuartos}",
                            style: _style(),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.restaurant),
                          title: Text("Cosinhas"),
                          trailing: Text(
                            "${propertyController.numConzinha}",
                            style: _style(),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.directions_car),
                          title: Text("Garagens/vagas"),
                          trailing: Text(
                            "${propertyController.numGaragen}",
                            style: _style(),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.accessibility),
                          title: Text("Banheiros"),
                          trailing: Text(
                            "${propertyController.numBanheiro}",
                            style: _style(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: Icon(Icons.location_on),
                        title: Text("Endereço"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            children: [
                              _addrensDetails("Logradouro:",
                                  "${propertyController.publicPlace}"),
                              _addrensDetails(
                                  "Número:", "${propertyController.number}"),
                              _addrensDetails("Bairro:",
                                  "${propertyController.neighborhood}"),
                              _addrensDetails("Compemento:",
                                  "${propertyController.complement}"),
                              _addrensDetails(
                                  "Cidade:", "${propertyController.city}"),
                              _addrensDetails(
                                  "Estado:", "${propertyController.state}"),
                              _addrensDetails(
                                  "CEP:", "${propertyController.cep}"),

                              // Row(
                              //   children: [
                              //     Text(
                              //       "Logradouro: Afonsso de Souza; \nNúmero: 450; \nBairro: Bom Jesus; \nCompemento: Depois do Trevo 125; \nCidade: Serra Talhada; \nEstado: Pernambuco.",
                              //     ),
                              //   ],
                              // )
                            ],
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(left: 5, top: 5),
                    child: ListTile(
                      title: Text("Telefones para contato"),
                      leading: Icon(Icons.contact_phone),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: ListTile(
                      subtitle: Text(
                        "${propertyController.telFixo}",
                        style: TextStyle(color: Colors.teal[700]),
                      ),
                      title: Text("1ª Contato"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: ListTile(
                      subtitle: Text(
                        "${propertyController.telCelular}",
                        style: TextStyle(color: Colors.teal[700]),
                      ),
                      title: Text("2ª Contato"),
                    ),
                  ),
                  Divider(),
                  (propertyController != null)
                      ? Container(
                          padding: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Container(
                                  height: 40,
                                  width: width,
                                  child: RaisedButton.icon(
                                    icon: Icon(Icons.edit),
                                    onPressed: () {
                                      Modular.to.pop();
                                      Modular.to.pop();
                                      Modular.to.pop();
                                      Modular.to.pop();
                                      Modular.to.pop();
                                    },
                                    label: Text("Editar"),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Flexible(
                                child: Container(
                                  height: 40,
                                  width: width,
                                  child: RaisedButton.icon(
                                    color: CustomColor.primary,
                                    icon: Icon(
                                      Icons.save,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      // Lembrar de salvar antes
                                      Modular.to.pop();
                                      Modular.to.pop();
                                      Modular.to.pop();
                                      Modular.to.pop();
                                      Modular.to.pop();
                                      Modular.to.pop();
                                    },
                                    label: Text("Salvar",
                                        style: TextStyle(
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _addrensDetails(String title, String value) => Row(
        children: [
          Text(title),
          SizedBox(
            width: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 4, top: 4),
            child: Text(
              value,
              style: TextStyle(fontSize: 15, color: Colors.teal[700]),
            ),
          )
        ],
      );

  TextStyle _style() => TextStyle(fontSize: 18, color: Colors.teal[700]);

  Widget _cardTop(String urlImg) => Container(
        width: MediaQuery.of(context).size.width - 50,
        // height: MediaQuery.of(context).size.height/3,
        // padding: EdgeInsets.only(right: 5),
        child: propertyController == null
            ? Image.network(
                urlImg,
                fit: BoxFit.cover,
              )
            : Image.asset(
                "${propertyController.urlImagesList[0]}",
                fit: BoxFit.cover,
              ),
      );
}
