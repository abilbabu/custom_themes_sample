import 'package:flutter/material.dart';

class AppConfigController with ChangeNotifier{
  bool isdark=false;
  isToggleTheme(bool value){
    isdark=value;
    notifyListeners();
  }
}