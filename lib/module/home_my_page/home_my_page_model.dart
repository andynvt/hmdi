import 'package:flutter/material.dart';

import 'home_my_page_logic.dart';

class HomeMyPageModel extends ChangeNotifier {
  HomeMyPageLogic _logic;
  HomeMyPageLogic get logic => _logic;

  HomeMyPageModel() {
    _logic = HomeMyPageLogic(this);
  }
}
