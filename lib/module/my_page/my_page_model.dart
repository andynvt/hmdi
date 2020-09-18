import 'package:flutter/material.dart';

import 'my_page_logic.dart';

class MyPageModel extends ChangeNotifier {
  MyPageLogic _logic;
  MyPageLogic get logic => _logic;

  MyPageModel() {
    _logic = MyPageLogic(this);
  }
}
