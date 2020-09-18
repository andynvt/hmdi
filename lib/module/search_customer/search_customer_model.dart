import 'package:flutter/material.dart';

import 'search_customer_logic.dart';

class SearchCustomerModel extends ChangeNotifier {
  SearchCustomerLogic _logic;
  SearchCustomerLogic get logic => _logic;

  SearchCustomerModel() {
    _logic = SearchCustomerLogic(this);
  }
}
