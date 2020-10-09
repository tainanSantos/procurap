import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Apartamento"),
        backgroundColor: CustomColor.primary,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.grey,
              height: height / 3,
              width: width,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _cardTop(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRIljcyRfexDpcFcdds0rx99sJHmKNCItyriw&usqp=CAU"),
                    _cardTop(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRIljcyRfexDpcFcdds0rx99sJHmKNCItyriw&usqp=CAU"),
                    _cardTop(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRIljcyRfexDpcFcdds0rx99sJHmKNCItyriw&usqp=CAU"),
                    _cardTop(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRIljcyRfexDpcFcdds0rx99sJHmKNCItyriw&usqp=CAU"),
                    // )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
         
            // Divider(),
            ListTile(
              title: Text(
                "Aluguel",
                style: _styleText(),
              ),
              trailing: Text(
                "RS, 250, 00",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                "Valor de Venda",
                style: _styleText(),
              ),
              trailing: Text(
                "RS, 500.000, 00",
                style: TextStyle(
                    color: CustomColor.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }

  TextStyle _styleText() => TextStyle(
      color: Colors.grey[700], fontSize: 17);

  Widget _cardTop(String urlImg) => Container(
        width: MediaQuery.of(context).size.width - 50,
        padding: EdgeInsets.only(right: 5),
        child: Image.network(
          urlImg,
          fit: BoxFit.cover,
        ),
      );
}
