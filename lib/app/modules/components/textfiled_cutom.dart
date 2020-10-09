import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

Widget textField(
        {double top,
        Function(String) onChanged,
        String errorText,
        String labelText,
        String helperText,
        int maxLength,
        TextInputType keyboardType,
        MaskTextInputFormatter inputFormatters,
        TextEditingController controller,
        bool suffixIcon = false}) =>
    Padding(
      padding: EdgeInsets.only(top: top ?? 5),
      child: TextFormField(
        controller: controller ?? null,
        onChanged: onChanged,
        // maxLength: maxLength ?? null,
        decoration: InputDecoration(
          // border: OutlineInputBorder(),
          helperText: helperText,

          // errorText: errorText,
          errorStyle: TextStyle(color: Colors.blue),
          labelText: labelText,
        ),
        keyboardType: keyboardType ?? null,
        inputFormatters: (inputFormatters == null) ? null : [inputFormatters],
      ),
    );
