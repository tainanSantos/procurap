import 'package:flutter/material.dart';

class LogoApp extends StatelessWidget {
  final Color logoColor;

  const LogoApp({Key key, this.logoColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 3),
          child: Text(
            "procur.",
            style: TextStyle(
              color: logoColor ?? Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          child: Text(
            "ap",
            style: TextStyle(
              fontSize: 30,
              color: Colors.pinkAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
