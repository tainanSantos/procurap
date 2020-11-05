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
        bool suffixIcon = false,
        IconData iconData,
        String hintText,
        Widget prefix}) =>
    Padding(
      padding: EdgeInsets.only(top: top ?? 0),
      child: TextFormField(
        controller: controller ?? null,
        onChanged: onChanged,
        // maxLength: maxLength ?? null,
        autofocus: false,
        decoration: InputDecoration(
          // border: OutlineInputBorder(),

          prefix: prefix,
          hintText: hintText,
          helperText: helperText,
          prefixIcon: iconData != null ? Icon(iconData) : null,
          errorText: errorText,
          labelText: labelText,
        ),
        keyboardType: keyboardType ?? null,
        inputFormatters: (inputFormatters == null) ? null : [inputFormatters],
      ),
    );
