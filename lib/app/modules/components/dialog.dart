import 'package:flutter/material.dart';

class AlertDialogCustom {
  AlertDialogCustom.Simple(
      {BuildContext context,
      String title,
      Function onPressed,
      String titleOnpresesd}) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text(title),
          children: <Widget>[
            FlatButton(
              onPressed: onPressed,
              child: Text(titleOnpresesd ?? 'Ok'),
            ),
          ],
        );
      },
    );
  }
  AlertDialogCustom.Action({
    BuildContext context,
    String title,
    String msg,
    Function onPressedCancel,
    String textCancel,
    Function onPressed,
    String text,
  }) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(msg),
          title: Text(title),
          actions: [
            FlatButton(onPressed: onPressedCancel, child: Text(textCancel)),
            FlatButton(onPressed: onPressed, child: Text(text)),
          ],
        );
      },
    );
  }
  AlertDialogCustom.Msg({
    BuildContext context,
    String title,
    int i,
  }) {
    showDialog(
      barrierDismissible: false,
      context: context,
      barrierColor: Colors.black12,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: title != null
              ? Text(
                  title,
                  textAlign: TextAlign.center,
                )
              : null,
          content: _selectWidget(i),
        );
      },
    );
  }

  Widget _selectWidget(int i) {
    switch (i) {
      case 1:
        return Center(
          child: CircularProgressIndicator(),
        );
      case 2:
        return Container(
          height: 50,
          child: Center(
            child: Icon(
              Icons.check,
              size: 50,
              color: Colors.green,
            ),
          ),
        );
        break;
      case 3:
        return Container(
          height: 50,
          child: Center(
            child: Icon(
              Icons.block,
              size: 50,
              color: Colors.red,
            ),
          ),
        );
        break;
      default:
    }
  }
}
