import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class CurrencyPtBrFormatter extends TextInputFormatter {
  CurrencyPtBrFormatter({this.maxDigits});
  final int maxDigits;
  double _uMaskValue;
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    if (maxDigits != null && newValue.selection.baseOffset > maxDigits) {
      return oldValue;
    }
    double value = double.parse(newValue.text);
    final formatter = new NumberFormat("#,##0.00", "pt_BR");
    String newText = "R\$ " + formatter.format(value / 100);
    //setting the umasked value
    _uMaskValue = value / 100;
    return newValue.copyWith(
        text: newText,
        selection: new TextSelection.collapsed(offset: newText.length));
  }

  //here the method
  double getUnmaskedDouble() {
    return _uMaskValue;
  }
}
