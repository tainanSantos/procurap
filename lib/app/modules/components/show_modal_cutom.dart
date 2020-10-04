import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
