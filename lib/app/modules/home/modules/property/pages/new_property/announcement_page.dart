import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/button_custom.dart';
import 'package:procurap/app/modules/home/modules/property/components/appbar_custom.dart';
import 'package:procurap/app/modules/home/modules/property/components/components.dart';
import 'package:procurap/app/modules/home/modules/property/property_controller.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';

class AnnouncementPage extends StatefulWidget {
  @override
  _AnnouncementPageState createState() => _AnnouncementPageState();
}

class _AnnouncementPageState extends State<AnnouncementPage> {
  final controller = Modular.get<PropertyController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCutom(),
      body: containerCustom(
        [
          titleForm(
            value: "Categoria do anúncio",
          ),

          Observer(
            builder: (_) => dropDownButtonField_(
              labelText: "Anúncio",
              list: (controller.tipoAnuncios.value != null)
                  ? controller.tipoAnuncios.value
                      .map((element) => element.nome)
                      .toList()
                  : [],
              helperText: "Selecione a opção desejada.",
              onChanged: controller.setTipoAnuncioModel,
            ),
          ),

          SizedBox(
            height: 30,
          ),

          // titleCustom("Qual é o tipo do seu imóvel?"),
          titleForm(value: "Categoria do imóvel"),

          Observer(
            builder: (_) => dropDownButtonField_(
              labelText: "Imóvel",
              // icon: Icons.apartment_sharp,
              helperText: "Selecione a opção desejada.",
              list: (controller.tipoImoveis.value != null)
                  ? controller.tipoImoveis.value
                      .map((element) => element.nome)
                      .toList()
                  : [],
              onChanged: controller.setTipoImovelModel,
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
      floatingActionButton: Observer(
        builder: (_) => ButtonCustom(
          radius: 0,
          title: "Próximo",
          onPressed: controller.valTipoAnuncio && controller.valTipoImovel
              ? () {
                  Modular.to.pushNamed('/home/property/complemet');
                }
              : null,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
