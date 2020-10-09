import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/button_custom.dart';
import 'package:procurap/app/modules/components/textfiled_cutom.dart';
import 'package:procurap/app/modules/home/property/new_property/components/appbar_custom.dart';
import 'package:procurap/app/modules/home/property/new_property/components/components.dart';
import 'package:procurap/app/modules/home/property/new_property/new_property_controller.dart';

class PricePage extends StatefulWidget {
  final String title;
  const PricePage({Key key, this.title = "Price"}) : super(key: key);

  @override
  _PricePageState createState() => _PricePageState();
}

class _PricePageState extends State<PricePage> {
  final controller = Modular.get<NewPropertyController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCutom(),
      body: containerCustom(
        [
          titleCustom("Preços do Aluguel"),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: textField(
                    // iconData: Icons.attach_money,
                    labelText: "Preço do aluguel",
                    keyboardType: TextInputType.number,
                    helperText: "Infrome o preço do aluguel"),
              ),
              SizedBox(
                width: 20,
              ),
              Flexible(
                flex: 1,
                child: dropDownButtonField_(
                    labelText: "Tempo",
                    list: ["Diária", "Semanal", "Mensal", "Anual"],
                    helperText: "Tempo de Uso.",
                    onChanged: (value) {}),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          titleCustom("Preços do Imóvel"),
          textField(
              // iconData: Icons.attach_money,
              labelText: "Preço do Imóvel",
              keyboardType: TextInputType.number,
              helperText: "Infome o preço de venda do imóvel (em reais)"),
          SizedBox(
            height: 30,
          ),
          titleCustom("Telefone para Contato"),
          textField(
              // iconData: Icons.phone,
              labelText: "Contato 1",
              keyboardType: TextInputType.number,
              helperText: "Pode ser fixo ou clelular"),
          textField(
              // iconData: Icons.phone,
              labelText: "Contato 2",
              keyboardType: TextInputType.number,
              helperText: "Pode ser fixo, cellular ou whatsapp"),
          SizedBox(
            height: 20,
          ),
          ButtonCustom(
            title: "Próximo",
            onPressed: () {
              Modular.to.pushNamed("/home/photos");
            },
          )
        ],
      ),
    );
  }
}
