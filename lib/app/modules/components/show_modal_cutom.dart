import 'package:flutter/material.dart';

class ShowModalCustom {
  ShowModalCustom.show({BuildContext context, Widget widget}) {
    showModalBottomSheet(
      context: context,
      builder: (a) {
        return widget;
      },
    );
  }
}
