

import 'package:e_commerce/features/home/data/models/item.dart';
import 'package:flutter/material.dart';

class FavouriteManager extends ChangeNotifier{
  final List<Item> _favouriteItems=[];
  get favouriteItems=>_favouriteItems;
  void addFavouriteItem(Item item){
    _favouriteItems.add(item);
    notifyListeners();
  }
  void deleteFavouriteItem(Item item){
    _favouriteItems.remove(item);
    notifyListeners();
  }
}