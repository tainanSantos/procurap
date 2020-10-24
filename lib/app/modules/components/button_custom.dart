import 'package:flutter/material.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';

class ButtonCustom extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color color;
  final double radius;

  const ButtonCustom(
      {Key key, this.title, this.onPressed, this.color, this.radius})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: RaisedButton(
        color: color == null ? CustomColor.primary : color,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.transparent, width: 1),
          borderRadius: BorderRadius.circular(radius == null ? 10 : radius),
        ),
        onPressed: onPressed,
        child: Text(
          title ?? "OK",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
