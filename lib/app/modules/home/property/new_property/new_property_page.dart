import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/dialog.dart';
import 'package:procurap/app/modules/components/textfiled_cutom.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';
import 'new_property_controller.dart';

class NewPropertyPage extends StatefulWidget {
  @override
  _NewPropertyPageState createState() => _NewPropertyPageState();
}

class _NewPropertyPageState
    extends ModularState<NewPropertyPage, NewPropertyController> {
  //use 'controller' variable to access controller

  final cityController = new TextEditingController();
  final neighborhoodController = new TextEditingController();
  final streetController = new TextEditingController();
  String state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.primary,
        title: Text(
          "Cadastro Imóvel",
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.save,
            ),
            onPressed: () {
            

              AlertDialogCustom.Msg(
                  context: context, title: "Salvando...", i: 1);
            },
          ),
        ],
      ),
      body: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              titleCustom("Endereço"),
              Observer(
                builder: (_) => textField(
                  maxLength: 150,
                  controller: streetController,
                  labelText: "Logradouro",
                  top: 10,
                  onChanged: controller.setPublicPlace,
                  errorText: controller.validatPublicPlace,
                ),
              ),

              Observer(
                builder: (_) => textField(
                  maxLength: 150,
                  labelText: "Bairro",
                  controller: neighborhoodController,
                  errorText: controller.validatNeighborhood,
                  onChanged: controller.setNeighborhood,
                ),
              ),

              // _text_title("Telefones para contato"),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 10,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Observer(
                        builder: (_) => textField(
                          maxLength: 150,
                          labelText: "Complemento",
                          errorText: controller.validatComplement,
                          onChanged: controller.setComplement,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Observer(
                        builder: (_) => textField(
                          maxLength: 4,
                          labelText: "Número",
                          // keyboardType: TextInputType.number,
                          errorText: controller.validatNumber,
                          onChanged: controller.setNumber,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0, top: 5),
                      child: Observer(
                        builder: (_) => textField(
                            maxLength: 9,
                            labelText: "CEP",
                            keyboardType: TextInputType.number,
                            errorText: controller.validatCep,
                            onChanged: (value) async {
                              if (value.length == 9) {
                                controller.cep = value;
                                await controller.getCep();
                                setState(() {
                                  this.neighborhoodController.text =
                                      controller.neighborhood;
                                  this.cityController.text = controller.city;
                                  this.state = controller.state;
                                  this.streetController.text =
                                      controller.publicPlace;
                                });
                              }
                            },
                            inputFormatters: controller.maskCep),
                      ),
                    ),
                  ),
                  Observer(
                    builder: (_) => Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: dropDownButtonField_(
                          // iconData: Icons.info_outline,
                          list: controller.statesBr,
                          labelText: "Estado",
                          onChanged: controller.setstate,
                          errorText: controller.validatState,
                          value: state,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Observer(
                builder: (_) => textField(
                  maxLength: 150,
                  controller: cityController,
                  labelText: "Cidade",
                  errorText: controller.validatCity,

                  onChanged: controller.setCity,
                  // initialValue: cityController,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: dropDownButtonField_(
                          labelText: "Quartos",
                          list: [
                            "0",
                            "1",
                            "2",
                            "3",
                            "4",
                            "5",
                          ],
                          onChanged: (s) {}),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: dropDownButtonField_(
                          labelText: "Salas",
                          list: [
                            "0",
                            "1",
                            "2",
                            "3",
                            "4",
                            "5",
                          ],
                          onChanged: (s) {}),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: dropDownButtonField_(
                          labelText: "Cosinhas",
                          list: [
                            "0",
                            "1",
                            "2",
                            "3",
                            "4",
                            "5",
                          ],
                          onChanged: (s) {}),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget titleCustom(String title) {
    return Container(
      padding: EdgeInsets.only(
        top: 30,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 17,
          color: Colors.black54,
          // color: Color.fromRGBO(74, 76, 255, 1),
          // fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  Widget dropDownButtonField_(
      {List list,
      String labelText,
      IconData iconData,
      Function(String) onChanged,
      String errorText,
      String value}) {
    return Container(
      // height: 75,
      margin: const EdgeInsets.only(top: 5),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          // border: OutlineInputBorder(),
          errorText: errorText,
          labelText: labelText,
        ),
        items: list.map(
          (value) {
            return DropdownMenuItem<String>(
              child: Text(
                value,
                overflow: TextOverflow.ellipsis,
              ),
              value: value,
            );
          },
        ).toList(),
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
