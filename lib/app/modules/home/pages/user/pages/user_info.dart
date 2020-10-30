import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/show_modal_cutom.dart';
import 'package:procurap/app/modules/home/pages/user/user_controller.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';

class UserInfo extends StatelessWidget {
  final controller = Modular.get<UserController>();
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
                    "Tainan",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Proprietário"),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(right: 15),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 35.0,
                    child:  IconButton(
                          icon: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            ShowModalCustom.show(
                              context: context,
                              widget: Container(
                                height: 50,
                                color: Colors.red,
                                child: Center(
                                  child: Text(
                                    "Não implementado.",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    // backgroundImage: NetworkImage(
                    //   "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg",
                    // ),
                  ),
                ),
              
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () {

              // Perguntgar se o usuário quet ver ou deletar o imóvel


              Modular.to.pushNamed("/home/my_propertys");
            },
            title: Text("Imóveis"),
            // trailing: Icon(Icons.business),
          ),
          _line(context),
          ListTile(
            onTap: () {
              Modular.to.pushNamed("/home/rent");
            },
            title: Text("Aluguéis"),
            // trailing: Icon(Icons.attach_money),
          ),
          _line(context),
          ListTile(
            onTap: () {
              Modular.to.pushNamed("/home/property/addrens");
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
              showModalBottomSheet(
                context: context,
                backgroundColor: Colors.transparent,
                builder: (_) => Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // borderRadius: BorderRadius.all(Radius.circular(10))
                      // borderRadius: BorderRadius.only(
                      //   topLeft: Radius.circular(10),
                      //   topRight: Radius.circular(10),
                      // ),
                    ),
                    padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10)),
                          height: 5,
                          width: 35,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text("Deseja realmente sair do aplicativo?"),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 260,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 120,
                                height: 40,
                                child: RaisedButton(
                                  elevation: 0,
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: Colors.grey[800], width: 2),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "NÃO",
                                    style: TextStyle(color: Colors.grey[800]),
                                  ),
                                ),
                              ),
                              Container(
                                width: 120,
                                height: 40,
                                child: RaisedButton(
                                  color: CustomColor.primary,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        color: CustomColor.primary, width: 2),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  onPressed: () async {
                                    await controller.exitApp();
                                    exit(0);
                                  },
                                  child: Text("SIM",
                                      style: TextStyle(color: Colors.white)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
              );
             
              // AlertDialogCustom.Action(
              //     context: context,
              //     title: "Sair",
              //     msg: "Deseja Realmente sair da aplicação?",
              //     onPressed: () {},
              //     text: "Sim",
              //     onPressedCancel: () {},
              //     textCancel: "Não");
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
