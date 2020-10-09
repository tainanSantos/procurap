import 'package:flutter/material.dart';

Widget titleCustom(String title, {double top}) {
  return Container(
    padding: EdgeInsets.only(
      top: top ?? 10,
    ),
    child: Text(
      title,
      style: TextStyle(
          fontSize: 17,
          color: Colors.black87,
          // color: Color.fromRGBO(74, 76, 255, 1),
          fontWeight: FontWeight.bold),
    ),
  );
}

Widget dropDownButtonField_(
    {List list,
    String labelText,
    IconData iconData,
    Function(String) onChanged,
    String errorText,
    String helperText,
    String value}) {
  return Container(
    // height: 75,
    margin: const EdgeInsets.only(top: 0),
    child: DropdownButtonFormField<String>(
      decoration: InputDecoration(
          // border: OutlineInputBorder(),
          errorText: errorText,
          labelText: labelText,
          helperText: helperText),
      items: list.map(
        (value) {
          return DropdownMenuItem<String>(
            child: Text(
              value,
              overflow: TextOverflow.ellipsis,
            ),
            value: value,
          );
        },
      ).toList(),
      value: value,
      onChanged: onChanged,
    ),
  );
}

Widget containerCustom(List<Widget> listW) => SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: listW),
    );
