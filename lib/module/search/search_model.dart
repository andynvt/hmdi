import 'package:flutter/material.dart';

import 'search_logic.dart';

class SearchModel extends ChangeNotifier {
  SearchLogic _logic;
  SearchLogic get logic => _logic;

  SearchModel() {
    _logic = SearchLogic(this);
  }
}
