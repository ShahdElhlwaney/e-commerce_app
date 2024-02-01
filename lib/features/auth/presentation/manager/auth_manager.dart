import 'dart:async';

import 'package:flutter/widgets.dart';

class AuthManager extends ChangeNotifier {
  bool _initialized = false;
  bool _isStarted = false;
  bool _isConnectedWithNumber = false;
  bool _isSignedIn = false;
  bool _isLoggedIn = false;
  bool _isSignedUp = false;
  bool _enteredCode = false;
  bool _toNumber = false;
  bool get initialized => _initialized;
  bool get isStarted => _isStarted;
  bool get isConnectedWithNumber => _isConnectedWithNumber;
  bool get isSignedIn => _isSignedIn;
  bool get isLoggedIn => _isLoggedIn;
  bool get isSignedUp => _isSignedUp;
  bool get enteredCode => _enteredCode;
  bool get toNumber => _toNumber;
  void initializeApp() {
    Timer(
        const Duration(
          milliseconds: 1000,
        ), () {
      _initialized = true;
      notifyListeners();
    });
  }

  void start() {
    _isStarted = true;
    notifyListeners();
  }

  void connectWithNumber() {
    _isConnectedWithNumber = true;
    notifyListeners();
  }

  void signIn() {
    _isSignedIn = true;
    notifyListeners();
  }

  void logIn() {
    _isLoggedIn = true;
    notifyListeners();
  }

  void enterCode() {
    _enteredCode = true;
    notifyListeners();
  }

  void goToNumber() {
    _toNumber = true;
    notifyListeners();
  }
void notPop(){
    _isLoggedIn=false;
    _isSignedUp=false;
    notifyListeners();
}
  void signUp() {
    _isSignedUp = true;
    notifyListeners();
  }
  void logout() {
    _initialized = false;
    _isSignedIn = false;
    _isStarted = false;
    _isConnectedWithNumber = false;
    _isLoggedIn = false;
    _isSignedUp = true;
    initializeApp();
    notifyListeners();
  }
}
