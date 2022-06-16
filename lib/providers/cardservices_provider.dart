import 'package:flutter/cupertino.dart';

class CardServicesProvider extends ChangeNotifier {
  bool _isSelectedCard1 = false;
  bool _isSelectedCard2 = false;

  bool get getIsSelectedCard1 => _isSelectedCard1 ;
  bool get getIsSelectedCard2 => _isSelectedCard2;

  void setIsSelectedCard1(isSelected) {
    _isSelectedCard1 = isSelected;
    notifyListeners();
  }
  
  void setIsSelectedCard2(isSelected) {
    _isSelectedCard2 = isSelected;
    notifyListeners();
  }
}