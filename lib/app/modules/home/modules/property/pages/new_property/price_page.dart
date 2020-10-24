import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/button_custom.dart';
import 'package:procurap/app/modules/components/textfiled_cutom.dart';
import 'package:procurap/app/modules/home/modules/property/components/appbar_custom.dart';
import 'package:procurap/app/modules/home/modules/property/components/components.dart';
import 'package:procurap/app/modules/home/modules/property/property_controller.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';

class PricePage extends StatefulWidget {
  final String title;
  const PricePage({Key key, this.title = "Price"}) : super(key: key);

  @override
  _PricePageState createState() => _PricePageState();
}

class _PricePageState extends State<PricePage> {
  final controller = Modular.get<PropertyController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCutom(),
      body: containerCustom(
        [
          titleForm(value: "Preços"),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: textField(
                  // iconData: Icons.attach_money,
                  top: 5,
                  labelText: "Preço do aluguel",
                  keyboardType: TextInputType.number,
                  helperText: "Infrome o preço do aluguel",
                  prefix: Text("R\$ "),
                  // prefix: Icon(Icons.attach_money)
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Flexible(
                flex: 1,
                child: dropDownButtonField_(
                  labelText: "Tempo",
                  list: controller.tipoHospedagens.value != null
                      ? controller.tipoHospedagens.value
                          .map((element) => element.nome)
                          .toList()
                      : [],
                  // list: ["Diária", "Semanal", "Mensal", "Anual"],
                  helperText: "Tempo de uso.",
                  onChanged: controller.setTipoHospedagemModel,
                ),
              ),
            ],
          ),
          textField(
            // iconData: Icons.attach_money,
            labelText: "Preço do imóvel",
            keyboardType: TextInputType.number,
            helperText: "Infome o preço de venda do imóvel (em reais)",
            prefix: Text("R\$ "),
          ),
          SizedBox(
            height: 30,
          ),
          titleForm(value: "Telefones para Contato"),
          textField(
              // iconData: Icons.phone,
              labelText: "1ª Contato",
              keyboardType: TextInputType.number,
              helperText: "Pode ser fixo, cellular ou whatsapp",
              inputFormatters: controller.maskPhone1),
          textField(
              // iconData: Icons.phone,
              labelText: "2ª Contato",
              keyboardType: TextInputType.number,
              helperText: "Pode ser fixo, cellular ou whatsapp",
              inputFormatters: controller.maskPhone2),
        ],
      ),
      floatingActionButton: Observer(
        builder: (_) => ButtonCustom(
            radius: 0,
            title: "Próximo",
            onPressed: () async {
              Modular.to.pushNamed('/home/property/photos');
            }),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
