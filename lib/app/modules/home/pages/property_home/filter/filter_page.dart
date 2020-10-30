import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
        ),
        // elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: RaisedButton(
              onPressed: () {
                if (controller.getUf != null &&
                    controller.getCidade != null &&
                    controller.getBairro != null) {
                  Modular.to.pop();
                  Modular.to.pushNamed("/home/list");
                }
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
      body: Observer(
        builder: (_) => SingleChildScrollView(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              DropDownCustom(
                labelText: "Estado",
                list: controller.getUfs(),
                onChanged: (value) {
                  controller.setCidade(null);
                  controller.setBairro(null);
                  controller.setCategoria(null);
                  controller.setUf(value);
                },
                value: controller.getUf,
                errorText: (controller.value != null)
                    ? null
                    : "O campo destino não pode ser vazio.",
              ),
              _myDivider(),
              DropDownCustom(
                labelText: "Cidade",
                list: controller.getCidades(),
                onChanged: (value) {
                  controller.setCategoria(null);

                  controller.setBairro(null);
                  controller.setCidade(value);
                },
                value: controller.getCidade,
                errorText: (controller.value != null)
                    ? null
                    : "O campo destino não pode ser vazio.",
              ),
              _myDivider(),
              DropDownCustom(
                labelText: "Bairro",
                list: controller.getBairros(),
                value: controller.getBairro,
                onChanged: (value) {
                  controller.setCategoria(null);

                  controller.setBairro(value);
                },
                errorText: (controller.value != null)
                    ? null
                    : "O campo destino não pode ser vazio.",
              ),
              _myDivider(),
              // DropDownCustom(
              //   labelText: "Categoria",
              //   list: controller.getCategorias(),
              //   onChanged: controller.setCategoria,
              //   value: controller.getCategoria,
              //   errorText: (controller.value != null)
              //       ? null
              //       : "O campo destino não pode ser vazio.",
              // ),
              // _myDivider()
            ],
          ),
        ),
      ),
    );
  }

  Widget _myDivider() => Container(
        margin: EdgeInsets.only(bottom: 20),
        height: 1,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey[200],
      );
}
