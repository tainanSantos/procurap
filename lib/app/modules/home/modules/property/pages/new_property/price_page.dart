import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/button_custom.dart';
import 'package:procurap/app/modules/components/textfiled_cutom.dart';
import 'package:procurap/app/modules/home/modules/property/components/appbar_custom.dart';
import 'package:procurap/app/modules/home/modules/property/components/components.dart';
import 'package:procurap/app/modules/home/modules/property/property_controller.dart';

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
          Observer(
            builder: (_) => Row(
              children: [
                Flexible(
                  flex: 1,
                  child: textField(
                    // iconData: Icons.attach_money,
                    top: 5,
                    labelText: "Aluguel",
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
          ),
          Observer(
            builder: (_) => textField(
              labelText: "Imóvel",
              keyboardType: TextInputType.number,
              helperText: "Infome o preço de venda do imóvel (em reais)",
              prefix: Text("R\$ "),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          titleForm(value: "Telefones para contato"),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: textField(
                  labelText: "1ª Contato",
                  keyboardType: TextInputType.number,
                  helperText: "Telefone fixo",
                  inputFormatters: controller.maskPhone1,
                  onChanged: controller.setTelFixo,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Flexible(
                flex: 1,
                child: textField(
                  // iconData: Icons.phone,
                  labelText: "2ª Contato",
                  keyboardType: TextInputType.number,
                  helperText: "Telefone celular",
                  inputFormatters: controller.maskPhone2,
                  onChanged: controller.setTelCelular,
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: Observer(
        builder: (_) => ButtonCustom(
            radius: 0,
            title: "Próximo",
            onPressed: (controller.valTelCelular && controller.valTelFixo)
                ? () {
                    Modular.to.pushNamed('/home/property/photos');
                  }
                : null),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
