import 'package:flutter/material.dart';

class TextButtonProvider extends ChangeNotifier{
    bool _isSelectedButtonAlimento = true;
    bool _isSelectedButtonAccesorios = false;
    bool _isSelectedButtonRecompensas = false;

    bool _isSelectedButtonPaseadores = true;
    bool _isSelectedButtonRestaurantes = false;
    bool _isSelectedButtonFotoEstudio = false;

    bool get getIsSelectedAlimento => _isSelectedButtonAlimento;
    bool get getIsSelectedButtonAccesorios => _isSelectedButtonAccesorios;
    bool get getIsSelectedButtonRecompensas => _isSelectedButtonRecompensas;

    bool get getIsSelectedButtonPaseadores => _isSelectedButtonPaseadores;
    bool get getIsSelectedButtonRestaurantes => _isSelectedButtonRestaurantes;
    bool get getIsSelectedButtonFotoEstudio => _isSelectedButtonFotoEstudio;

    void setIsSelectedButtonAlimento(isSelected) {
      _isSelectedButtonAlimento = isSelected;
      notifyListeners();
    }
    
    void setIsSelectedButtonAccesorios(isSelected) {
      _isSelectedButtonAccesorios = isSelected;
      notifyListeners();
    }

    void setIsSelectedButtonRecompensas(isSelected) {
      _isSelectedButtonRecompensas = isSelected;
      notifyListeners();
    }

    void setIsSelectedButtonPaseadores(isSelected) {
      _isSelectedButtonPaseadores = isSelected;
      notifyListeners();
    }
    
    void setIsSelectedButtonRestaurantes(isSelected) {
      _isSelectedButtonRestaurantes = isSelected;
      notifyListeners();
    }

    void setIsSelectedButtonFotoEstudio(isSelected) {
      _isSelectedButtonFotoEstudio = isSelected;
      notifyListeners();
    }
}