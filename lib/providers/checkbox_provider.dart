import 'package:flutter/cupertino.dart';

class CheckBoxProvider extends ChangeNotifier {
  bool _isChecked = false;

  bool get getIsChecked => _isChecked;

  void setIsChecked(isChecked) {
    _isChecked = isChecked;
    notifyListeners();
  }
  
}