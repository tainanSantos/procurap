import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/dialog.dart';

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Proprietária"),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(right: 15),
                  child: CircleAvatar(
                    radius: 35.0,
                    backgroundImage: NetworkImage(
                      "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg",
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () {},
            title: Text("Meus imóveis"),
            // trailing: Icon(Icons.business),
          ),
          _line(context),
          ListTile(
            onTap: () {},
            title: Text("Alugueis"),
            // trailing: Icon(Icons.attach_money),
          ),
          _line(context),
          ListTile(
            onTap: () {},
            title: Text("Anotações"),
            // trailing: Icon(Icons.note),
          ),
          _line(context),
          ListTile(
            onTap: () {
              Modular.to.pushNamed("/home/newproperty");
            },
            title: Text("Novo Anúncio"),
            // trailing: Icon(Icons.add_location),
          ),
          _line(context),
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
          _line(context),
        ],
      ),
    );
  }

  _line(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 0),
        child: Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[200]),
      );
}
