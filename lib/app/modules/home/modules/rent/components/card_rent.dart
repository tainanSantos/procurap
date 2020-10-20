import 'package:flutter/material.dart';

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
      onTap: function,
      child: Card(
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
      ),
    );
  }
}
