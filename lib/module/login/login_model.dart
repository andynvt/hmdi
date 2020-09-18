import 'package:flutter/material.dart';

import 'login_logic.dart';

class LoginModel extends ChangeNotifier {
  LoginLogic _logic;
  LoginLogic get logic => _logic;

  LoginModel() {
    _logic = LoginLogic(this);
  }
}
