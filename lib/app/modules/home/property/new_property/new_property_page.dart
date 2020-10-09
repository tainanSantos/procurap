import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:image_picker/image_picker.dart';
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

  String _caminho;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.primary,
        title: Text(
          "Cadastro",
        ),
        // iconTheme: IconThemeData(),

        actions: [
          IconButton(
            icon: Icon(
              Icons.edit,
            ),
            onPressed: () {},
          ),
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
              titleCustom("Anúncio"),

              dropDownButtonField_(
                  labelText: "Tipo de Anúncio",
                  list: ["Apenas venda", "Apenas Aluguel", "Venda ou Aluguel"],
                  helperText: "O que você deseja fazer com seu imóvel?",
                  onChanged: (value) {}),

              titleCustom("Endereço"),
              Observer(
                builder: (_) => textField(
                  maxLength: 150,
                  controller: streetController,
                  labelText: "Logradouro",
                  helperText: "Nome da rua ou nome da propriedade (Ruiais)",
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

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Observer(
                      builder: (_) => textField(
                          maxLength: 9,
                          labelText: "CEP",
                          keyboardType: TextInputType.number,
                          errorText: controller.validatCep,
                          helperText: "CEP da localidade ou Cidade",
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
                        value: state,
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
                  helperText: "Nome da Cidade",
                  onChanged: controller.setCity,
                  // initialValue: cityController,
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              titleCustom("Complementares"),
              dropDownButtonField_(
                  labelText: "Banheiros",
                  list: ["0", "1", "2", "3", "+"],
                  helperText: "Selecione a Quantidade de Banheiros",
                  onChanged: (s) {}),
              dropDownButtonField_(
                  labelText: "Garagens / Vagas",
                  list: [
                    "0",
                    "1",
                    "2",
                    "3",
                    "+",
                  ],
                  helperText: "Selecione a Quantidade de Garagens / Vagas",
                  onChanged: (s) {}),
              dropDownButtonField_(
                  labelText: "Quartos",
                  list: [
                    "0",
                    "1",
                    "2",
                    "3",
                    "4",
                    "5",
                    "+",
                  ],
                  helperText: "Selecione a Quantidade de Quastos",
                  onChanged: (s) {}),
              dropDownButtonField_(
                  labelText: "Cozinhas",
                  list: ["0", "1", "2", "3", "+"],
                  helperText: "Selecione a Quantidade de Cozinhas",
                  onChanged: (s) {}),

              dropDownButtonField_(
                  labelText: "Tipo",
                  helperText: "Tipo em que o seu imóvel se enquadra.",
                  list: [
                    "Apartamento padrão",
                    "Casas",
                    "Casas de praia e de campo",
                    "Coberturas",
                    "Depósitos",
                    "Flats",
                    "Lofts",
                    "Lojas",
                    "Kitnet",
                    "Mansões",
                    "Sala"
                  ],
                  onChanged: (s) {}),
              titleCustom("Preços"),
              textField(
                  labelText: "Preço do aluguel",
                  keyboardType: TextInputType.number,
                  helperText: "Preço do aluguel"),
              textField(
                  labelText: "Preço do apratamento",
                  keyboardType: TextInputType.number,
                  helperText: "Preço do apartamento"),
              titleCustom("Foto"),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: Text("Adcionar Imagens do Imóvel")),
                  IconButton(
                      icon: Icon(
                        Icons.photo_library,
                        color: Colors.grey,
                      ),
                      onPressed: () async {
                        var gallery = await ImagePicker.platform.pickImage(
                          source: ImageSource.gallery,
                        );
                        if (gallery.path != null)
                          controller.urlImagesList.add(gallery.path);
                        print("CAMINHO DA IMAGEMS >>> ${gallery.path}");
                      }),
                  IconButton(
                    icon: Icon(
                      Icons.camera_alt,
                      color: Colors.grey,
                    ),
                    onPressed: () async {
                      var picture = await ImagePicker.platform.pickImage(
                        source: ImageSource.camera,
                      );

                      _caminho = picture.path;
                      if (picture.path != null)
                        controller.urlImagesList.add(picture.path);
                    },
                  ),
                ],
              ),
              Observer(
                builder: (_) => Container(
                  color: Colors.grey[200],
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          // print(
                          //     "Apertou na imagem ${controller.urlImagesList[index]}");
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Scaffold(
                                appBar: AppBar(
                                  backgroundColor: Colors.black,
                                  actions: [
                                    IconButton(
                                        icon: Icon(
                                          Icons.delete,
                                          color: Colors.white,
                                        ),
                                        onPressed: () {
                                          controller.urlImagesList.remove(
                                              controller.urlImagesList[index]);
                                          Navigator.pop(context);
                                        })
                                  ],
                                ),
                                backgroundColor: Colors.black,
                                body: Center(
                                  child: Image.asset(
                                    "${controller.urlImagesList[index]}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        child: Image.asset(
                          "${controller.urlImagesList[index]}",
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                    itemCount: controller.urlImagesList.length,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget titleCustom(String title) {
    return Container(
      padding: EdgeInsets.only(
        top: 50,
      ),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 17,
            color: Colors.black87,
            // color: Color.fromRGBO(74, 76, 255, 1),
            fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget dropDownButtonField_(
      {List list,
      String labelText,
      IconData iconData,
      Function(String) onChanged,
      String errorText,
      String helperText,
      String value}) {
    return Container(
      // height: 75,
      margin: const EdgeInsets.only(top: 0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
            // border: OutlineInputBorder(),
            errorText: errorText,
            labelText: labelText,
            helperText: helperText),
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
