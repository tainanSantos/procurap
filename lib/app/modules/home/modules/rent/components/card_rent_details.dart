import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/modules/components/show_modal_cutom.dart';

class CardRentDetails extends StatelessWidget {
  final String tipoImovel;
  final String inquilino;
  final String dateVencimento;
  final bool status;
  const CardRentDetails({
    Key key,
    this.tipoImovel,
    this.inquilino,
    this.dateVencimento,
    this.status = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 10),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tipoImovel,
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
          ],
        ),
      ),
    );
  }
}
