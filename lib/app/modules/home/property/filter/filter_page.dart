import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/drop_down_custom.dart';
import 'filter_controller.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends ModularState<FilterPage, FilterController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(250, 250, 250, 1),
        title: Text(
          "Filtrar por",
          style: TextStyle(color: Colors.blueGrey[900]),
        ),
        actions: [
          RaisedButton(
            onPressed: () {},
            color: Colors.transparent,
            elevation: 0,
            child: Text(
              "APLICAR",
              style: TextStyle(color: Color.fromRGBO(74, 76, 255, 1)),
            ),
          )
        ],
        iconTheme: IconThemeData(),
      ),
      // backgroundColor:  Color.fromRGBO(74, 76, 255, 1),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            DropDownCustom(
              labelText: "Desejo",
              list: [
                'ALUGAR',
                'COMPRAR',
              ],
              onChanged: (value) {},
              errorText: (controller.value != null)
                  ? null
                  : "O campo destino não pode ser vazio.",
            ),
            DropDownCustom(
              labelText: "Estado",
              list: [
                'AMAZONIA',
                'PARAIBA',
                'PERNAMBUCO',
                'RIO DE JANEIRO',
              ],
              onChanged: (value) {},
              errorText: (controller.value != null)
                  ? null
                  : "O campo destino não pode ser vazio.",
            ),
            DropDownCustom(
              labelText: "Cidade",
              list: ['TABIRA', 'TRIUNFO', 'SERRA TALHADA', 'FLORES', 'ALAGOAS'],
              onChanged: (value) {},
              errorText: (controller.value != null)
                  ? null
                  : "O campo destino não pode ser vazio.",
            ),
            DropDownCustom(
              labelText: "Bairro",
              list: [
                'BOM JESUSUS RESSUCITADO',
                'ALTO DA CONCEIÇÃO',
                'BOMBA',
                'AABB',
                'BAIRRO UNIVERSITÁRIO'
              ],
              onChanged: (value) {},
              errorText: (controller.value != null)
                  ? null
                  : "O campo destino não pode ser vazio.",
            ),
            DropDownCustom(
              labelText: "Tipo do Imóvel",
              list: [
                'CASA',
                'APARTAMENTO',
                'QUITINETE',
                'CHACARA',
                'GARAGEM',
                'GALPÃO',
                'PONTO COMERIAL'
              ],
              onChanged: (value) {},
              errorText: (controller.value != null)
                  ? null
                  : "O campo destino não pode ser vazio.",
            ),
            DropDownCustom(
              labelText: "Quaindidade de quartos",
              list: [
                '1',
                '2',
                '3',
                '4 ou +',
          
              ],
              onChanged: (value) {},
              errorText: (controller.value != null)
                  ? null
                  : "O campo destino não pode ser vazio.",
            ),
          ],
        ),
      ),
    );
  }
}
