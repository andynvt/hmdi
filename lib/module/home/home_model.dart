import 'package:flutter/material.dart';

import 'home_logic.dart';

class HomeModel extends ChangeNotifier {
  HomeLogic _logic;
  HomeLogic get logic => _logic;

  HomeModel() {
    _logic = HomeLogic(this);
  }
}
