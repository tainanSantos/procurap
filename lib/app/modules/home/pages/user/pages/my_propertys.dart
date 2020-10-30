import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/dialog.dart';
import 'package:procurap/app/modules/home/pages/property_home/components/card_custom_list.dart';
import 'package:procurap/app/modules/home/pages/property_home/property_home_controller.dart';
import 'package:procurap/app/shared/models/imovel_model.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';

class MyPropertys extends StatefulWidget {
  @override
  _MyPropertysState createState() => _MyPropertysState();
}

class _MyPropertysState extends State<MyPropertys> {
  final controller = Modular.get<PropertyHomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: CustomColor.primary2Filter,
          iconTheme: IconThemeData(),
          title: Text(
            "Meus Imóveis",
            style: TextStyle(color: Colors.grey[900]),
          ),
        ),
        body: Observer(
          builder: (_) {
            if (controller.imovelModels.error != null) {
              return Center(
                child: FlatButton(
                  onPressed: () {},
                  child: Text("Erro ao carregar"),
                ),
              );
            }
            if (controller.imovelModels.value == null ||
                controller.tipoAnuncios.value == null ||
                controller.tipoHospedagens.value == null ||
                controller.imagens.value == null ||
                controller.enderecos.value == null ||
                controller.contatos.value == null) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (controller.imovelModels.value.length == 0) {
              return Center(
                child: Text("Nenhum imóvek cadastrado"),
              );
            }
            // if (controller.imovelModels.value == null ||
            //   controller.tipoAnuncios.value == null ||
            //   controller.tipoImoveis.value == null ||
            //   controller.tipoHospedagens == null ||
            //   controller.imagens.value == null ||
            //   controller.enderecos == null) {
            // return Center(
            //   child: CircularProgressIndicator(),
            // );
            // }
            List<ImovelModel> imoveis = controller.imovelModels.value;

            return ListView.builder(
              itemCount: imoveis.length,
              itemBuilder: (context, index) {
                return CardCustomList(
                  onTap: () async {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (_) => Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          padding:
                              EdgeInsets.only(left: 30, right: 30, top: 10),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(10)),
                                height: 5,
                                width: 35,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text("O que você deseja fazer com este imóvel?"),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 260,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 120,
                                      height: 40,
                                      child: RaisedButton(
                                        color: Colors.red,
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              color: Colors.red, width: 2),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        onPressed: () async {
                                          // Aqui tu vai deletar o imóvel
                                          // é só apagar o email e o istema faz o resto

                                          Navigator.pop(context);
                                          AlertDialogCustom.Action(
                                              context: context,
                                              msg:
                                                  "Tem Certeza que deseja DELETAR este imóvel?",
                                              onPressed: () async {
                                                await controller
                                                    .enderecoRepository
                                                    .delete(imoveis[index]
                                                        .endereco);
                                                controller.load();
                                                Navigator.pop(context);
                                              },
                                              text: "SIM",
                                              onPressedCancel: () {
                                                Navigator.pop(context);
                                              },
                                              textCancel: "NÃO",
                                              title: "DELETAR");
                                        },
                                        child: Text("DELETAR",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ),
                                    Container(
                                      width: 120,
                                      height: 40,
                                      child: RaisedButton(
                                        elevation: 0,
                                        color: CustomColor.primary,
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              color: CustomColor.primary,
                                              width: 2),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        onPressed: () async {
                                          await controller
                                              .setImovelModel(imoveis[index]);
                                          await controller.setEnderecoModel(
                                              controller.getEndereco(
                                                  imoveis[index].endereco));

                                          Navigator.pop(context);

                                          Modular.to
                                              .pushNamed("/home/details_home");
                                        },
                                        child: Text(
                                          "VER",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 260,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 260,
                                      height: 40,
                                      child: RaisedButton(
                                        color: Colors.green,
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              color: Colors.green, width: 2),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        onPressed: () async {
                                          // Aqui tu vai deletar o imóvel
                                          // é só apagar o email e o istema faz o resto
                                          Navigator.pop(context);
                                        },
                                        child: Text("EDITAR",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  isFavorite: false,
                  type: controller.getTipoImovel(imoveis[index].tipoImovel),
                  addrens:
                      controller.getEndereco(imoveis[index].endereco).cidade,
                  value: "RS ${imoveis[index].precoAluguel}",
                  description:
                      "${imoveis[index].numQuartos} quarto(s), ${imoveis[index].numVagas} garagem(ns), ${imoveis[index].numBanheiros} banheiro(s), ${imoveis[index].numConzinhas} cozinha(s) ",
                  urlImage: controller.getImgsImovel(imoveis[index].id)[0],
                );
              },
            );
          },
        ));

    // body: ListView(
    //   children: [
    //     SizedBox(
    //       height: 5,
    //     ),
    //     CardCustomList(
    //       isFavorite: false,
    //       isFavoriteVisible: true,
    //       type: "Apartamento",
    //       addrens: "Serra Talhada - PE",
    //       value: "RS 300, 00",
    //       description: "4 quartos, 1 garagem, 2 banheiros, 2 banheiros, ",
    //       urlImage:
    //           "https://lrvimoveis.com.br/wp-content/uploads/2015/11/perspectiva-da-varanda-gourmet-do-graca-lummini-570x314.jpg",
    //     ),
    //     CardCustomList(
    //       isFavoriteVisible: true,
    //       type: "Apartamento",
    //       addrens: "Serra Talhada - PE",
    //       value: "RS 300, 00",
    //       description: "4 quartos, 1 garagem, 2 banheiros, 2 banheiros, ",
    //       urlImage:
    //           "https://images.homify.com/c_fill,f_auto,q_0,w_740/v1512476699/p/photo/image/2348043/reforma-apartamento-studio-batataes-odvo-06.jpg",
    //     ),
    //     CardCustomList(
    //       isFavoriteVisible: true,
    //       type: "Apartamento",
    //       addrens: "Serra Talhada - PE",
    //       value: "RS 300, 00",
    //       description: "4 quartos, 1 garagem, 2 banheiros, 2 banheiros, ",
    //       urlImage:
    //           "https://images.homify.com/c_fill,f_auto,q_0,w_740/v1512476699/p/photo/image/2348043/reforma-apartamento-studio-batataes-odvo-06.jpg",
    //     ),
    //   ],
    // ),
  }
}
