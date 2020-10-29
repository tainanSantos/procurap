import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/dialog.dart';
import 'package:procurap/app/modules/home/modules/property/property_controller.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';

class Details extends StatelessWidget {
  final String imgUrl;
  final String tipoImovel;
  final String aluguel;
  final String precoImovel;
  final int quartos;
  final int cozinhas;
  final int garagem;
  final int banheiros;
  final String cep;
  final String estado;
  final String logradouro;
  final String bairro;
  final String complemento;
  final String numero;
  final String cidade;
  final String telCelular;
  final String telFixo;
  final Function function;

  const Details(
      {Key key,
      this.imgUrl,
      this.tipoImovel,
      this.aluguel,
      this.precoImovel,
      this.quartos,
      this.cozinhas,
      this.garagem,
      this.banheiros,
      this.cep,
      this.estado,
      this.logradouro,
      this.bairro,
      this.complemento,
      this.numero,
      this.cidade,
      this.telCelular,
      this.telFixo,
      this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.height;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: CustomColor.primary,
            expandedHeight: 250,
            floating: true,
            pinned: true,
            actions: function == null
                ? [
                    FlatButton(
                      onPressed: () {
                        Modular.to.pushNamed("/home/gallery_page");
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
                  ]
                : null,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                width: MediaQuery.of(context).size.width - 50,
                child: (function == null)
                    ? CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: this.imgUrl == null
                            ? "https://cdn.alldecorboutique.com.br/wp-content/uploads/2018/08/233110.jpg"
                            : this.imgUrl,
                        placeholder: (context, url) => Container(
                            child: Center(child: CircularProgressIndicator())),
                        errorWidget: (context, url, error) =>
                            Container(child: Center(child: Icon(Icons.error))),
                      )
                    : Image.asset(
                        imgUrl,
                        fit: BoxFit.cover,
                      ),
              ),
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
                          title: Text(
                            this.tipoImovel,
                          ),
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
                                      "R\$ ${this.aluguel}",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.teal[700],
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("/Mensal")
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
                                      "R\$ ${this.precoImovel}",
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
                            "${this.quartos}",
                            style: _style(),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.restaurant),
                          title: Text("Cosinhas"),
                          trailing: Text(
                            "${this.cozinhas}",
                            style: _style(),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.directions_car),
                          title: Text("Garagens/vagas"),
                          trailing: Text(
                            "${this.garagem}",
                            style: _style(),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.accessibility),
                          title: Text("Banheiros"),
                          trailing: Text(
                            "${this.banheiros}",
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
                              _addrensDetails(
                                  "Logradouro:", "${this.logradouro}"),
                              _addrensDetails("Número:", "${this.numero}"),
                              _addrensDetails("Bairro:", "${this.bairro}"),
                              _addrensDetails(
                                  "Compemento:", "${this.complemento}"),
                              _addrensDetails("Cidade:", "${this.cidade}"),
                              _addrensDetails("Estado:", "${this.estado}"),
                              _addrensDetails("CEP:", "${this.cep}"),

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
                        this.telFixo,
                        style: TextStyle(color: Colors.teal[700]),
                      ),
                      title: Text("1ª Contato"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: ListTile(
                      subtitle: Text(
                        this.telCelular,
                        style: TextStyle(color: Colors.teal[700]),
                      ),
                      title: Text("2ª Contato"),
                    ),
                  ),
                  Divider(),
                  (function != null)
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
                                    onPressed: () async {
                                      // Lembrar de salvar antes
                                      print("Chegando aqui");
                                      final controllerP =
                                          Modular.get<PropertyController>();
                                      await controllerP.salvarImovel();

                                      AlertDialogCustom.Msg(
                                          title: "Salvando imóvel ... ",
                                          context: context,
                                          i: 1);
                                      Timer(Duration(microseconds: 2000), () {
                                        AlertDialogCustom.Msg(
                                            title: "Salvo Com sucesso",
                                            context: context,
                                            i: 2);
                                        Timer(Duration(), () {
                                          Modular.to.pop();
                                          Modular.to.pop();
                                          Modular.to.pop();
                                          Modular.to.pop();
                                          Modular.to.pop();
                                          Modular.to.pop();
                                          Modular.to.pop();
                                          Modular.to.pop();
                                        });
                                      });
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
}
