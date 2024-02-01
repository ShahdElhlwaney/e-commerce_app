
import 'package:e_commerce/features/home/data/models/item.dart';
import 'package:flutter/material.dart';

class CartManager extends ChangeNotifier{
List<Item>_items=[];
get items=>_items;

void addItem(Item item){
  _items.add(item);
  notifyListeners();
}
void deleteItem(int index){
  _items.removeAt(index);
  notifyListeners();
}

}