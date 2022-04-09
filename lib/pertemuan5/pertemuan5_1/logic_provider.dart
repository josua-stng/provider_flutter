import 'package:flutter/material.dart ';
import 'package:provider/provider.dart';

class LogicProvider extends ChangeNotifier{
  bool? IsChecked = false;

  set setstatuscode(val){
    IsChecked= val;
    notifyListeners();
  }
  }

class TestItem extends ChangeNotifier{
  bool? IsItem = false;
}
