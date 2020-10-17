
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/button_custom.dart';
import 'package:procurap/app/modules/property/components/components.dart';
import 'package:procurap/app/modules/property/property_controller.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';

class AnnouncementPage extends StatefulWidget {
  final String title;
  const AnnouncementPage({Key key, this.title = "Announcement"})
      : super(key: key);

  @override
  _AnnouncementPageState createState() => _AnnouncementPageState();
}

class _AnnouncementPageState extends State<AnnouncementPage> {
  final controller = Modular.get<PropertyController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.primary,
        title: Text("Cadastro Imóvel"),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Modular.to.pushReplacementNamed('/home');
            }),
      ),
      body: containerCustom(
        [
          titleCustom("Como deseja anunciar o imóvel?"),
          SizedBox(
            height: 5,
          ),
          dropDownButtonField_(
              labelText: "Tipo de Anúncio",
              list: ["Apenas venda", "Apenas Aluguel", "Venda ou Aluguel"],
              helperText: "O que você deseja fazer com seu imóvel?",
              onChanged: (value) {}),
          SizedBox(
            height: 20,
          ),
          ButtonCustom(
            title: "Próximo",
            onPressed: () {
              Modular.to.pushNamed('/property/addrens');
            },
          )
        ],
      ),
    );
  }
}
