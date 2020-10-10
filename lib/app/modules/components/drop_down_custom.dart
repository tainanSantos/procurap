import 'package:flutter/material.dart';


//Este componente é específico para a class do Filter


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
            padding: EdgeInsets.only( top: 0, bottom: 0),
          ),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              
                
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
  
        ],
      ),
    );
  }
}
