import 'package:flutter/material.dart';
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
    return  Scaffold(
        appBar: appBarCutom(),
        body: containerCustom(
          [
            titleCustom("Como deseja anunciar o imóvel?"),
            SizedBox(
              height: 5,
            ),
            dropDownButtonField_(
                labelText: "Tipo de Anúncio",
                list: ["Apenas Venda", "Apenas Aluguel", "Venda ou Aluguel"],
                helperText: "O que você deseja fazer com seu imóvel?",
                onChanged: (value) {}),
            SizedBox(
              height: 20,
            ),
            ButtonCustom(
              title: "Próximo",
              color: CustomColor.primary2,
              onPressed: () {
                Modular.to.pushNamed('/home/property/addrens');
              },
            )
          ],
        ),
      
    );
  }
}
