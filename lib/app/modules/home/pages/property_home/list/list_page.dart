import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/show_modal_cutom.dart';
import 'package:procurap/app/modules/home/pages/property_home/components/card_custom_list.dart';
import 'package:procurap/app/modules/home/pages/property_home/filter/filter_controller.dart';
import 'package:procurap/app/modules/home/pages/property_home/filter/filter_page.dart';
import 'package:procurap/app/shared/models/imovel_model.dart';
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

  final filterController = Modular.get<FilterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color.fromRGBO(74, 76, 255, 1),
        backgroundColor: CustomColor.primary,

        title: Text(filterController.bairro),
        actions: [],
      ),
      body: Observer(
        builder: (_) {
          // if (filterController.imovelModels.length == 0) {
          //   return Center(
          //     child: Text("Nenhum imóvek cadastrado"),
          //   );
          // }
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
          print(filterController.getIMoveis());
          List<ImovelModel> imoveis = filterController.getIMoveis();

          return ListView.builder(
            itemCount: imoveis.length,
            itemBuilder: (context, index) {
              return CardCustomList(
                onTap: () async {
                  await filterController.propertyHomeController
                      .setImovelModel(imoveis[index]);
                  await filterController.propertyHomeController
                      .setEnderecoModel(filterController.propertyHomeController
                        .getEndereco(imoveis[index].endereco));

                  Modular.to.pushNamed("/home/details_filter");
                },
                isFavorite: false,
                type: filterController.propertyHomeController
                    .getTipoImovel(imoveis[index].tipoImovel),
                addrens: filterController.propertyHomeController
                    .getEndereco(imoveis[index].endereco)
                    .cidade,
                value: "RS ${imoveis[index].precoAluguel}",
                description:
                    "${imoveis[index].numQuartos} quarto(s), ${imoveis[index].numVagas} garagem(ns), ${imoveis[index].numBanheiros} banheiro(s), ${imoveis[index].numConzinhas} cozinha(s) ",
                urlImage: filterController.propertyHomeController
                    .getImgsImovel(imoveis[index].id)[0],
              );
            },
          );
        },
      ),
    );
  }
}
