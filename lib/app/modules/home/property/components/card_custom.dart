import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CardCustom extends StatelessWidget {
  final String imovel;
  final String bairro;
  final String descripitio;
  final String valueAluguel;

  const CardCustom({Key key, this.imovel, this.bairro, this.descripitio, this.valueAluguel}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: Text("Casa com garagem"),
        subtitle: Text("Bairro Bom Jesus"),
        expandedCrossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            // color: Colors.red,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star_border,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("4,5")
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Casa com garagem, três quasrtos, uma sala, um banheiro, a dois minutos do ponto de ônibus da UAST, água e luz já inclusos no valor do aluguel.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "RS",
                          ),
                          Text(
                            " 200",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          Text(
                            ",00",
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // color: Colors.blue,
                      height: 40,
                      // padding: EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                          // color: Colors.yellow,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          border: Border(
                            top: BorderSide(width: 1.0, color: Colors.blue),
                            left: BorderSide(width: 1.0, color: Colors.blue),
                            right: BorderSide(width: 1.0, color: Colors.blue),
                            bottom: BorderSide(width: 1.0, color: Colors.blue),
                          )),
                      child: FlatButton(
                          // color: Colors.transparent,
                          onPressed: () {
                            Modular.to.pushNamed('/home/details');
                          },
                          child: Text(
                            "Mais Detalhes",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          )),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
