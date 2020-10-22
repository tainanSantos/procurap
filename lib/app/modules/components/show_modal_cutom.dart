import 'package:flutter/material.dart';

class ShowModalCustom {
  ShowModalCustom.show({BuildContext context, Widget widget}) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (a) {
        return widget;
      },
    );
  }
}
