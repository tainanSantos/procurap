import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';

class ButtonCustom extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color color;

  const ButtonCustom({Key key, this.title, this.onPressed, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 2,
        color: color == null ? CustomColor.primary : color,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.transparent, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          // decoration: BoxDecoration(
          //     // color: Color.fromRGBO(74, 76, 255, 1),
          //     color: CustomColor.primary,
          //     borderRadius: BorderRadius.all(Radius.circular(10))),
          child: FlatButton(
            color: Colors.transparent,
            onPressed: onPressed,
            child: Text(
              title ?? "OK",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
