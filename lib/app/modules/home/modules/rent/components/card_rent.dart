import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/button_custom.dart';
import 'package:procurap/app/modules/components/show_modal_cutom.dart';
import 'package:procurap/app/modules/home/modules/rent/components/card_rent_details.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';

class CardRent extends StatelessWidget {
  final String tipoImovel;
  final String inquilino;
  final String dateVencimento;
  final bool status;
  final Function function;

  const CardRent({
    Key key,
    this.tipoImovel,
    this.inquilino,
    this.dateVencimento,
    this.status = true,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Modular.to.pushNamed('/home/rent/detailsRent');
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (a) {
            return Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height / 2.5,
              padding: EdgeInsets.only(left: 25, right: 25, top: 15),
              child: ListView(
                children: [
                  ListTile(
                    title: Text(
                      !status ? "Pendente" : "Realizado",
                      style: TextStyle(
                          color: status ? CustomColor.primary : Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    subtitle: Text("status de pagamento"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  status
                      ? Container(
                          child: ButtonCustom(
                            title: "Voltar",
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        )
                      : Container(
                          child: ButtonCustom(
                            color: Colors.red,
                            title: "Notificar Inquilino",
                            onPressed: () {},
                          ),
                        ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 55,
                    padding: EdgeInsets.all(5),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Sobre",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Container(
        margin: EdgeInsets.all(5),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tipoImovel,
                style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey[800],
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
                    inquilino,
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
                    dateVencimento,
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
                  status
                      ? Icon(
                          Icons.check,
                          color: Colors.blue,
                        )
                      : Icon(
                          Icons.not_interested,
                          color: Colors.red,
                        ),
                ],
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
