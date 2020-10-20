import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/home/home_controller.dart';
import 'package:procurap/app/modules/home/modules/rent/components/card_rent.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';
import 'rent_controller.dart';

class RentPage extends StatefulWidget {
  final String title;
  const RentPage({Key key, this.title = "Meus Aluguéis"}) : super(key: key);

  @override
  _RentPageState createState() => _RentPageState();
}

class _RentPageState extends ModularState<RentPage, RentController> {
  //use 'controller' variable to access controller
  final controllerHome = Modular.get<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.primary2,
        actions: [
          PopupMenuButton(
            onSelected: (value) {},
            itemBuilder: (a) => [
              PopupMenuItem(
                child: Text("Atrasados"),
              ),
              PopupMenuItem(child: Text("Em dia"))
            ],
          )
        ],
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          CardRent(
            function: () {},
            dateVencimento: "20/10/2020",
            tipoImovel: "Casas",
            inquilino: "Maria de Lima Souza",
          ),
          CardRent(
            function: () {},
            dateVencimento: "20/04/2020",
            tipoImovel: "Apartamento padão",
            inquilino: "Jose de Lima Silva",
            status: false,
          ),
          CardRent(
            function: () {},
            dateVencimento: "20/10/2020",
            tipoImovel: "Apartamento padão",
            inquilino: "João de Lima Silva",
          ),
        ],
      ),
    );
  }
}
