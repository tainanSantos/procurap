import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/button_custom.dart';
import 'package:procurap/app/modules/home/modules/property/components/appbar_custom.dart';
import 'package:procurap/app/modules/home/modules/property/components/components.dart';
import 'package:procurap/app/modules/home/modules/property/property_controller.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';

class ComplemetPage extends StatefulWidget {
  @override
  _ComplemetPageState createState() => _ComplemetPageState();
}

class _ComplemetPageState extends State<ComplemetPage> {
  final controller = Modular.get<PropertyController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCutom(),
      body: containerCustom(
        [
          titleForm(value: "Quantidade de cômodos"),

          dropDownButtonField_(
              labelText: "Banheiros",
              list: [
                "0",
                "1",
                "2",
                "3",
                "4",
                "5",
                "6",
              ],
              helperText: "Selecione a quantidade de banheiros",
              onChanged: controller.setNumBanheiro),
          dropDownButtonField_(
              labelText: "Garagens / vagas",
              list: [
                "0",
                "1",
                "2",
                "3",
                "4",
                "5",
                "6",
                "7",
                "8",
                "9",
                "10",
                "11",
                "12",
              ],
              helperText: "Selecione a quantidade de garagens / vagas",
              onChanged: controller.setNumGaragem),
          dropDownButtonField_(
              labelText: "Quartos",
              list: [
                "0",
                "1",
                "2",
                "3",
                "4",
                "5",
                "6",
                "7",
                "8",
                "9",
                "10",
                "11",
                "12",
              ],
              helperText: "Selecione a quantidade de quastos",
              onChanged: controller.setNumqQuarto),
          dropDownButtonField_(
              labelText: "Cozinhas",
              list: [
                "0",
                "1",
                "2",
                "3",
              ],
              helperText: "Selecione a quantidade de cozinhas",
              onChanged: controller.setNumCozinha),
          SizedBox(
            height: 30,
          ),
          // SizedBox(
          //   height: 20,
          // ),
          // ButtonCustom(
          //   title: "Próximo",
          //   color: CustomColor.primary2,
          //   onPressed: () {
          //     Modular.to.pushNamed('/home/property/price');
          //   },
          // )
        ],
      ),
      floatingActionButton: Observer(
        builder: (_) => ButtonCustom(
          radius: 0,
          title: "Próximo",
          onPressed: controller.valQtd
              ? () {
                  Modular.to.pushNamed('/home/property/price');
                }
              : null,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
