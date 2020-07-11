import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Constant.dart';

class ConvertorProvidor extends ChangeNotifier {
  String fromUnit = 'NIS';
  String toUnit = 'NIS';
  double textFieldValue = 1.0;
  String result = "0";
  int selectedIndex = 0;
  Map selMap = ConvertorProvidor().getSelectedMap();

  getSelectedMap() {
    return unitsNav[selectedIndex];
  }

  setSelectedIndex(int i) {
    this.selectedIndex = i;
    notifyListeners();
  }

  setFromUnit(String value) {
    this.fromUnit = value;
    calculate();
  }

  setToUnit(String value) {
    this.toUnit = value;
    calculate();
  }

  setValue(String myValue) {
    this.textFieldValue = double.parse(myValue);
    calculate();
  }

  calculate() {
    this.result = "${selMap[fromUnit] / selMap[toUnit] * textFieldValue}";
    notifyListeners();
  }



}
