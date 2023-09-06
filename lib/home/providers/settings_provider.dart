import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String CurrentLangue = 'en';
  ThemeMode CurrentTheme = ThemeMode.light;

  void ChangeThme(ThemeMode newTheme){
    if(CurrentTheme==newTheme){
      return;
    }
    CurrentTheme=newTheme;
    notifyListeners();
  }


  void ChangeLangue (String newLangue){
    if (CurrentLangue==newLangue){
      return;
    }
    CurrentLangue = newLangue ;
    notifyListeners();

  }
}