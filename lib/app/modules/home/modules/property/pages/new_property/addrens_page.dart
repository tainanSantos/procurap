import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/button_custom.dart';
import 'package:procurap/app/modules/components/textfiled_cutom.dart';
import 'package:procurap/app/modules/home/modules/property/components/appbar_custom.dart';
import 'package:procurap/app/modules/home/modules/property/components/components.dart';
import 'package:procurap/app/modules/home/modules/property/property_controller.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';

class AddrensPage extends StatefulWidget {
  final String title;
  const AddrensPage({Key key, this.title = "Addrens"}) : super(key: key);

  @override
  _AddrensPageState createState() => _AddrensPageState();
}

class _AddrensPageState extends State<AddrensPage> {
  final cityController = new TextEditingController();
  final neighborhoodController = new TextEditingController();
  final stateController = new TextEditingController();
  final publicPlaceController = new TextEditingController();
  final complementController = new TextEditingController();

  String state;

  final controller = Modular.get<PropertyController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCutom(),
      body: containerCustom(
        [
          // titleCustom("Endereço"),

          titleForm(
            value: "Endereço",
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Observer(
                  builder: (_) => textField(
                      top: 5,
                      maxLength: 9,
                      labelText: "CEP",
                      keyboardType: TextInputType.number,
                      errorText: controller.validatCep,
                      helperText: "CEP da localidade ou Cidade",
                      onChanged: (value) async {
                        controller.setCep_(value);
                        if (value.length == 9) {
                          await controller.setCep(value);
                          // setState(() {
                          this.neighborhoodController.text =
                              controller.neighborhood;
                          this.cityController.text = controller.city;
                          this.state = controller.state;
                          this.complementController.text =
                              controller.complement;
                          this.state = controller.state;
                          this.publicPlaceController.text =
                              controller.publicPlace;
                          // });
                        }
                      },
                      inputFormatters: controller.maskCep),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Observer(
                builder: (_) => Expanded(
                  flex: 1,
                  child: dropDownButtonField_(
                    // iconData: Icons.info_outline,
                    list: controller.statesBr,
                    labelText: "Estado",
                    helperText: "UF do Estado",
                    onChanged: controller.setstate,
                    // errorText: controller.validatState,
                    value: controller.state,
                  ),
                ),
              ),
            ],
          ),

          Observer(
            builder: (_) => textField(
              maxLength: 150,
              controller: publicPlaceController,
              labelText: "Logradouro",
              helperText: "Nome da rua ou nome da propriedade rural",
              onChanged: controller.setPublicPlace,
              errorText: controller.validatPublicPlace,
            ),
          ),

          Observer(
            builder: (_) => textField(
              maxLength: 150,
              labelText: "Bairro",
              helperText: "Nome do Bairro",
              controller: neighborhoodController,
              errorText: controller.validatNeighborhood,
              onChanged: controller.setNeighborhood,
            ),
          ),

          // _text_title("Telefones para contato"),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Observer(
                  builder: (_) => textField(
                    maxLength: 150,
                    labelText: "Complemento",
                    helperText: "Ponto de Referência",
                    errorText: controller.validatComplement,
                    controller: complementController,
                    onChanged: controller.setComplement,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 1,
                child: Observer(
                  builder: (_) => textField(
                    maxLength: 4,
                    labelText: "Número",
                    helperText: "Número do Imóvel",
                    keyboardType: TextInputType.number,
                    errorText: controller.validatNumber,
                    onChanged: controller.setNumber,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),

          Observer(
            builder: (_) => textField(
              maxLength: 150,
              controller: cityController,
              labelText: "Cidade",
              errorText: controller.validatCity,

              helperText: "Nome da Cidade",
              onChanged: controller.setCity,
              // initialValue: cityController,
            ),
          ),
          SizedBox(
            height: 20,
          ),

          // SizedBox(
        ],
      ),
      floatingActionButton: Observer(
        builder: (_) => ButtonCustom(
          radius: 0,
          title: "Próximo",
          onPressed: controller.validateEndereco
              ? () async {
                  Modular.to.pushNamed('/home/property/announcement');
                }
              : null,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
