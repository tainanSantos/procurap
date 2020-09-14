// import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// import 'package:healthtransportationmobile/app/shared/styles/gradiente_blue.dart';
// import 'package:intl/intl.dart';

class BasicDateField extends StatelessWidget {
  final String title;
  final Function(DateTime) onChanged;
  final String errorText;
  final DateTime firstDate;
  final DateTime initialDate;
  final DateTime lastDate;
  final bool iconData;
  final String helpText;
  final bool maxLength;

  BasicDateField(
      {Key key,
      this.title,
      this.onChanged,
      this.errorText,
      this.firstDate,
      this.initialDate,
      this.lastDate,
      this.iconData = false,
      this.helpText,
      this.maxLength = false})
      : super(key: key);

  final format = DateFormat("dd/MM/yyyy");
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        DateTimeField(
          format: format,
          maxLength: maxLength ? 10 : null,
          decoration: InputDecoration(
            prefixIcon: iconData == true ? Icon(Icons.date_range) : null,
            labelText: title,
            errorText: errorText ?? null,

            // border: OutlineInputBorder(),
            // fillColor: Colors.white,
          ),
          onChanged: onChanged ?? null,
          validator: (value) {
            return "nao pose der nulo";
          },
          onShowPicker: (context, currentValue) {
            return showDatePicker(
              context: context,

              helpText: helpText ?? null,
              cancelText: "Cancelar",
              confirmText: "Salvar",
              firstDate: firstDate ?? DateTime.now(), // pirmeira data
              initialDate: initialDate ??
                  DateTime
                      .now(), // data que vai aparecer na tela ao abir o datapiker
              locale: Locale("pt"),
              lastDate: lastDate ?? DateTime(2100), // ultima data
              builder: (BuildContext context, Widget child) {
                return Theme(

                  data: ThemeData.light().copyWith(
                    
                    colorScheme: ColorScheme.light(
                      primary: Color.fromRGBO(74, 76, 255, 1),
                      // onPrimary: Colors.white,
                      // surface: getThemeColor(),
                      // onSurface: Colors.white,
                    ),
                    // dialogBackgroundColor: Colors.white,
                  ),
                  child: child,
                );
              },
            );
          },
        ),
      ],
    );
  }
}
