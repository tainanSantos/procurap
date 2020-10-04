import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/drop_down_custom.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';
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
        backgroundColor: CustomColor.primary2Filter,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Filtros",
            style: TextStyle(color: Colors.black87),
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: RaisedButton(
              onPressed: () {
                Modular.to.pop();
              },
              color: Colors.transparent,
              elevation: 0,
              child: Text(
                "Aplicar",
                style: TextStyle(color: Colors.pink),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
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
              labelText: "Categoria",
              list: [
                'CASA',
                'APARTAMENTO',
                'QUITINETE',
                'CHACARA',
                'GARAGEM',
                'GALPÃO',
                'PONTO COMERIAL',
                'TODOS'
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
