import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/button_custom.dart';
import 'package:procurap/app/modules/components/textfiled_cutom.dart';
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
    return WillPopScope(
      onWillPop: () {
        controller.numBanheiro = null;
        controller.numGaragen = null;
        controller.numQuartos = null;
        controller.numConzinha = null;
        Modular.to.pop();
      },
      child: Scaffold(
        appBar: appBarCutom(),
        body: containerCustom(
          [
            titleForm(value: "Nª de cômodos"),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: dropDownButtonField_(
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
                      helperText: "Qtd. de banheiros",
                      onChanged: controller.setNumBanheiro),
                ),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  flex: 1,
                  child: dropDownButtonField_(
                      labelText: "Vagas",
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
                      helperText: "Qtd. garagens/vagas",
                      onChanged: controller.setNumGaragem),
                ),
              ],
            ),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: dropDownButtonField_(
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
                      helperText: "Qtd. quastos",
                      onChanged: controller.setNumqQuarto),
                ),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  flex: 1,
                  child: dropDownButtonField_(
                      labelText: "Cozinhas",
                      list: [
                        "0",
                        "1",
                        "2",
                        "3",
                      ],
                      helperText: "Qtd. cozinhas",
                      onChanged: controller.setNumCozinha),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            titleForm(value: "Descrição"),
            SizedBox(
              height: 20,
            ),
            TextField(
                enableInteractiveSelection: false,
                focusNode: FocusNode(),
                textAlignVertical: TextAlignVertical.top,
                keyboardType: TextInputType.multiline,
                maxLines: 8,
                decoration: InputDecoration(
                    fillColor: Colors.blueAccent[50],
                    filled: true,
                    labelText: "Descrição",
                    alignLabelWithHint: true,
                    helperText:
                        "Gostaria de acresecntar alguma descrição?\nEste campo não obrigatório",
                    labelStyle: TextStyle()),
                onChanged: controller.setDescricao),
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
      ),
    );
  }
}
