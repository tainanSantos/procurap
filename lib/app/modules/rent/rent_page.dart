import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/home/home_controller.dart';
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
    return WillPopScope(
      onWillPop: () {
        Modular.to.pushReplacementNamed("/home");
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: CustomColor.primary2,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {

              Modular.to.pushReplacementNamed('/home');
            },
          ),
          actions: [
            PopupMenuButton(
              onSelected: (value) {},
              itemBuilder: (a) => [
                PopupMenuItem(
                  child: Text("Atrasádos"),
                ),
                PopupMenuItem(child: Text("Em dia"))
              ],
            )
          ],
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Card(
                margin: EdgeInsets.all(5),
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Apartemanto padrão",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey[900],
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Inquilino"),
                          Text(
                            "Jose Junho de Souza",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey[800],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Data Vencimento"),
                          Text(
                            "10/10/2020",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey[800],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Status"),
                          Icon(
                            Icons.check,
                            color: Colors.blue,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Card(
                margin: EdgeInsets.all(5),
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Casa",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey[900],
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Inquilino"),
                          Text(
                            "João de Lima e Silva",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey[800],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Data Vencimento"),
                          Text(
                            "10/09/2020",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey[800],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Status"),
                          Icon(
                            Icons.not_interested,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Card(
                margin: EdgeInsets.all(5),
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Apartamento padrão",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey[900],
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Inquilino"),
                          Text(
                            "Maria de Silva e Souza",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey[800],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Data Vencimento"),
                          Text(
                            "10/09/2020",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey[800],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Status"),
                          Icon(
                            Icons.not_interested,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
         
          ],
        ),
      ),
    );
  }
}
