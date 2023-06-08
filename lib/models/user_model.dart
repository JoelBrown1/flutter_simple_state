import 'package:flutter/foundation.dart';

class User extends ChangeNotifier {
  bool _loggedIn = false;

  bool get status => _loggedIn;

  void loginStatus(bool status) {
    debugPrint('state of user: $_loggedIn');
    _loggedIn = !_loggedIn;

    notifyListeners();
  }
}
