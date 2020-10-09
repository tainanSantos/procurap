import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/button_custom.dart';
import 'package:procurap/app/modules/components/textfiled_cutom.dart';
import 'package:procurap/app/modules/home/property/new_property/components/appbar_custom.dart';
import 'package:procurap/app/modules/home/property/new_property/components/components.dart';

class ComplemetPage extends StatefulWidget {
  final String title;
  const ComplemetPage({Key key, this.title = "Complemet"}) : super(key: key);

  @override
  _ComplemetPageState createState() => _ComplemetPageState();
}

class _ComplemetPageState extends State<ComplemetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCutom(),
      body: containerCustom([
        titleCustom("Informações"),
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
        SizedBox(
          height: 30,
        ),
        titleCustom("Tipo de imóvel"),
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
        SizedBox(
          height: 20,
        ),
        ButtonCustom(
          title: "Próximo",
          onPressed: () {
            Modular.to.pushNamed('/home/price');
          },
        )
      ]),
    );
  }
}
