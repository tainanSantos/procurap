import 'package:flutter/material.dart';
import 'package:procurap/app/shared/utils/curom_color.dart';

Widget titleForm({String value, IconData data}) => Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 2, top: 10),
          child: Text(
            value,
            style: TextStyle(
                fontSize: 17,
                color: CustomColor.primary,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        data == null ? Container() : Icon(data, color: CustomColor.primary)
      ],
    );

Widget dropDownButtonField_(
    {List list,
    String labelText,
    IconData iconData,
    Function(String) onChanged,
    String errorText,
    String helperText,
    String value,
    IconData icon}) {
  return Container(
    // height: 75,
    margin: const EdgeInsets.only(top: 0),
    child: DropdownButtonFormField<String>(
      decoration: InputDecoration(
          prefixIcon: (icon != null) ? Icon(Icons.business) : null,
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
      child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: listW),
    );
