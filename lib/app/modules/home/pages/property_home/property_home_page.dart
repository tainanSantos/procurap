import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/logo_app.dart';
import 'package:procurap/app/modules/components/show_modal_cutom.dart';
import 'package:procurap/app/modules/home/pages/property_home/components/card_custom_list.dart';
import 'package:procurap/app/modules/home/pages/property_home/filter/filter_page.dart';
import 'package:procurap/app/shared/models/imovel_model.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';
import 'property_home_controller.dart';

class PropertyHomePage extends StatefulWidget {
  @override
  _PropertyHomePageState createState() => _PropertyHomePageState();
}

class _PropertyHomePageState
    extends ModularState<PropertyHomePage, PropertyHomeController> {
  //use 'controller' variable to access controller

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: CustomColor.primary,
          title: LogoApp(),
          leading: PopupMenuButton(
            onSelected: (value) {
              switch (value) {
                case 1:
                  break;
                case 2:
                  break;

                default:
              }
            },
            icon: Icon(Icons.menu),
            itemBuilder: (_) => [
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
                ShowModalCustom.show(
                  context: context,
                  widget: FilterPage(),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.map),
              onPressed: () {
                ShowModalCustom.show(
                  context: context,
                  widget: Container(
                    height: 50,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        "Não implementado.",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                );

                // AlertDialogCustom.Msg(
                //     context: context, title: "Não Implementado", i: 3);
                // Timer(Duration(seconds: 1), () => Modular.to.pop());
              },
            )
          ],
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
                    await controller.setImovelModel(imoveis[index]);
                    await controller.setEnderecoModel(
                        controller.getEndereco(imoveis[index].endereco));

                    Modular.to.pushNamed("/home/details_home");
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
