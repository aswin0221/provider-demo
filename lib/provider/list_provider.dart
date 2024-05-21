import 'package:flutter/material.dart';

class ListProvider extends ChangeNotifier {


  List list = [];

  addData(){
    list.add(list.length+1);
    notifyListeners();
  }

}