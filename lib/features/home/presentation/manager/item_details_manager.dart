

import 'package:e_commerce/features/home/data/models/item.dart';
import 'package:flutter/material.dart';

class ItemDetailsManager extends ChangeNotifier{
  bool _isTabed=false;
  bool get isTabed=>_isTabed;
   late Item _item;
   get item=>_item;

  void displayItemDetails(Item item){
    _item=item;
    _isTabed=true;
    notifyListeners();
  }
  void tabOffDetails(){
    _isTabed=false;
    notifyListeners();
  }
}