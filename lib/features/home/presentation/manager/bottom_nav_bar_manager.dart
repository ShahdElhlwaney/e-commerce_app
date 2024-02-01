import 'package:flutter/cupertino.dart';

class BottomNavBarManager extends ChangeNotifier {
  int _currentTab = 0;
  int get currentTab => _currentTab;
  void goToTab(int index) {
    _currentTab = index;
    notifyListeners();
  }
}
