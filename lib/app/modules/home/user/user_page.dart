import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/dialog.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';
import 'user_controller.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends ModularState<UserPage, UserController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.exit_to_app),
      //   backgroundColor: CustomColor.primary,
      //   onPressed: () {
      //     AlertDialogCustom.Action(
      //         context: context,
      //         title: "Sair",
      //         msg: "Deseja Realmente sair da aplicação?",
      //         onPressed: () {},
      //         text: "Sim",
      //         onPressedCancel: () {},
      //         textCancel: "Não");
      //   },
      // ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Row(
              // direction: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 1,
                  child: ListTile(
                    title: Text(
                      "Maria Santos",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Proprietária"),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.only(right: 15),
                    child: CircleAvatar(
                      radius: 40.0,
                      backgroundImage: NetworkImage(
                        "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              onTap: () {},
              title: Text("Meus imóveis"),
              trailing: Icon(Icons.business),
            ),
            _line(),
            ListTile(
              onTap: () {},
              title: Text("Alugueis"),
              trailing: Icon(Icons.attach_money),
            ),
            _line(),
            ListTile(
              onTap: () {},
              title: Text("Anotações"),
              trailing: Icon(Icons.note),
            ),
            _line(),
            ListTile(
              onTap: () {
                Modular.to.pushNamed("/home/newproperty");
              },
              title: Text("Novo Anúncio"),
              trailing: Icon(Icons.add_location),
            ),
            _line(),
            SizedBox(
              height: 30,
            ),
            ListTile(
              onTap: () {
                AlertDialogCustom.Action(
                    context: context,
                    title: "Sair",
                    msg: "Deseja Realmente sair da aplicação?",
                    onPressed: () {},
                    text: "Sim",
                    onPressedCancel: () {},
                    textCancel: "Não");
              },
              // leading: Icon(Icons.exit_to_app),
              title: Text("Sair"),
            ),
            _line(),
          ],
        ),
      ),
    );
  }

  _line() => Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
        child: Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[200]),
      );
}
