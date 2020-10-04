import 'package:flutter/material.dart';

class DropDownCustom extends StatelessWidget {
  final List list;
  final String labelText;
  final IconData iconData;
  final Function(String) onChanged;
  final String errorText;
  final String value;

  const DropDownCustom(
      {Key key,
      this.list,
      this.labelText,
      this.iconData,
      this.onChanged,
      this.errorText,
      this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only( top: 0, bottom: 10),
            // child: Text(labelText),
          ),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
                // border: OutlineInputBorder(),
                // fillColor: Colors.white,
                // filled: true,
                errorText: errorText,
                labelText: labelText,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                focusedBorder: InputBorder.none
                // labelText: labelText,
                ),
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
        // Container(
        //   height: 1,
        //   color: Colors.black38,
        // )
        ],
      ),
    );
  }
}
