import 'dart:async';

import 'package:flutter/material.dart';
class SelectedTab{
  static const shop=0;
  static const explore=1;
  static const cart=2;
  static const favourite=3;
  static const account=4;
}
class AppStateManager extends ChangeNotifier {
  void initializeApp() {
    Timer(const Duration(milliseconds: 1000), () {
      _isInitialized = true;
      notifyListeners();
    });
  }

  bool _isInitialized = false;
  int _selectedTab = SelectedTab.shop;
  bool _isLoggedIn = false;
  bool _isWelcome=false;
  bool get isLoggedIn=>_isLoggedIn;
  int get selectedTab=>_selectedTab;
  bool get isInitialized=>_isInitialized;
  bool get isWelcome=>_isWelcome;
  void login() {
    _isLoggedIn=true;
    notifyListeners();
  }
  void logout() {
    _isInitialized=false;
    _isLoggedIn=false;
    _isWelcome=false;
    _selectedTab=SelectedTab.shop;
    initializeApp();
  }
  void selectTab(int index){
    _selectedTab=index;
    notifyListeners();
  }
  void completeWelcome(){
    _isWelcome=true;
    notifyListeners();
  }
}
