import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/button_custom.dart';
import 'package:procurap/app/modules/components/textfiled_cutom.dart';
import 'package:procurap/app/modules/property/components/appbar_custom.dart';
import 'package:procurap/app/modules/property/components/components.dart';
import 'package:procurap/app/modules/property/property_controller.dart';
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
         
          titleCustom("Preços do Aluguel"),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: textField(
                  // iconData: Icons.attach_money,
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
              helperText: "Infome o preço de venda do imóvel (em reais)",
              prefix: Text("R\$ ")),
          SizedBox(
            height: 30,
          ),
          titleCustom("Telefone para Contato"),
          textField(
              // iconData: Icons.phone,
              labelText: "Primeiro Contato",
              keyboardType: TextInputType.number,
              helperText: "Pode ser fixo ou clelular",
              inputFormatters: controller.maskPhone1),
          textField(
              // iconData: Icons.phone,
              labelText: "Segundo Contato",
              keyboardType: TextInputType.number,
              helperText: "Pode ser fixo, cellular ou whatsapp",
              inputFormatters: controller.maskPhone2),
          SizedBox(
            height: 20,
          ),
          ButtonCustom(
            color: CustomColor.primary2,
            title: "Próximo",
            onPressed: () {
              Modular.to.pushNamed("/property/photos");
            },
          )
        ],
      ),
    );
  }
}
