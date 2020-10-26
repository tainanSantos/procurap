import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/home/modules/property/property_controller.dart';
import 'package:procurap/app/modules/home/pages/property_home/property_home_controller.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  // final propertyHomeController = Modular.get<PropertyHomeController>();

  String _imgUrl;
  String _tipoImovel;
  String _aluguel;
  String _precoImovel;
  int _quartos;
  int _cozinhas;
  int _garagem;
  int _banheiros;
  String _cep;
  String _estado;
  String _logradouro;
  String _bairro;
  String _complemento;
  String _numero;
  String _cidade;
  String _telCelular;
  String _telFixo;

  @override
  void initState() {
    super.initState();
    if (Modular.navigator.path == "/home/details") {
      final propertyHomeC = Modular.get<PropertyHomeController>();
      int id = propertyHomeC.imovelModel.id;
      var imovel = propertyHomeC.imovelModel;
      var endereco = propertyHomeC.enderecoModel;
      this._imgUrl = propertyHomeC.getImgsImovel(id)[0];
      this._tipoImovel = propertyHomeC.getTipoImovel(id);
      this._aluguel = imovel.precoAluguel;
      this._precoImovel = imovel.precoImovel;
      this._quartos = imovel.numQuartos;
      this._cozinhas = imovel.numConzinhas;
      this._garagem = imovel.numVagas;
      this._banheiros = imovel.numBanheiros;
      this._cep = endereco.cep;
      this._estado = endereco.estado;
      this._logradouro = endereco.logradouro;
      this._bairro = endereco.bairro;
      this._complemento = endereco.complemento;
      this._numero = endereco.numero;
      this._cidade = endereco.cidade;
      // this._telFixo = imovel.
    } else {
      final propertyC = Modular.get<PropertyController>();
    }
  }

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
                background: Container(
              width: MediaQuery.of(context).size.width - 50,
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: this._imgUrl == null
                    ? "https://cdn.alldecorboutique.com.br/wp-content/uploads/2018/08/233110.jpg"
                    : this._imgUrl,
                placeholder: (context, url) => Container(
                    child: Center(child: CircularProgressIndicator())),
                errorWidget: (context, url, error) =>
                    Container(child: Center(child: Icon(Icons.error))),
              ),
            )),
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
                            this._tipoImovel,
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
                                      "R\$ ${this._aluguel}",
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
                                      "R\$ ${this._precoImovel}",
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
                            "${this._quartos}",
                            style: _style(),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.restaurant),
                          title: Text("Cosinhas"),
                          trailing: Text(
                            "${this._cozinhas}",
                            style: _style(),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.directions_car),
                          title: Text("Garagens/vagas"),
                          trailing: Text(
                            "${this._garagem}",
                            style: _style(),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.accessibility),
                          title: Text("Banheiros"),
                          trailing: Text(
                            "${this._banheiros}",
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
                                  "${this._logradouro}"),
                              _addrensDetails("Número:",
                                  "${this._numero}"),
                              _addrensDetails("Bairro:",
                                  "${this._bairro}"),
                              _addrensDetails("Compemento:",
                                  "${this._complemento}"),
                              _addrensDetails("Cidade:",
                                  "${this._cidade}"),
                              _addrensDetails("Estado:",
                                  "${this._estado}"),
                              _addrensDetails("CEP:",
                                  "${this._cep}"),

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
                  // Padding(
                  //   padding: EdgeInsets.only(left: 5),
                  //   child: ListTile(
                  //     subtitle: Text(
                  //       "${propertyController.telFixo}",
                  //       style: TextStyle(color: Colors.teal[700]),
                  //     ),
                  //     title: Text("1ª Contato"),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.only(left: 5),
                  //   child: ListTile(
                  //     subtitle: Text(
                  //       "${propertyController.telCelular}",
                  //       style: TextStyle(color: Colors.teal[700]),
                  //     ),
                  //     title: Text("2ª Contato"),
                  //   ),
                  // ),
                  Divider(),
                  // (propertyController != null)
                  //     ? Container(
                  //         padding: EdgeInsets.all(20),
                  //         child: Row(
                  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //           children: [
                  //             Flexible(
                  //               child: Container(
                  //                 height: 40,
                  //                 width: width,
                  //                 child: RaisedButton.icon(
                  //                   icon: Icon(Icons.edit),
                  //                   onPressed: () {
                  //                     Modular.to.pop();
                  //                     Modular.to.pop();
                  //                     Modular.to.pop();
                  //                     Modular.to.pop();
                  //                     Modular.to.pop();
                  //                   },
                  //                   label: Text("Editar"),
                  //                 ),
                  //               ),
                  //             ),
                  //             SizedBox(
                  //               width: 30,
                  //             ),
                  //             Flexible(
                  //               child: Container(
                  //                 height: 40,
                  //                 width: width,
                  //                 child: RaisedButton.icon(
                  //                   color: CustomColor.primary,
                  //                   icon: Icon(
                  //                     Icons.save,
                  //                     color: Colors.white,
                  //                   ),
                  //                   onPressed: () {
                  //                     // Lembrar de salvar antes
                  //                     Modular.to.pop();
                  //                     Modular.to.pop();
                  //                     Modular.to.pop();
                  //                     Modular.to.pop();
                  //                     Modular.to.pop();
                  //                     Modular.to.pop();
                  //                   },
                  //                   label: Text("Salvar",
                  //                       style: TextStyle(
                  //                         color: Colors.white,
                  //                       )),
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       )
                  //     : Container(),
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
