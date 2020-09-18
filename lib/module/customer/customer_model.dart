import 'package:flutter/material.dart';

import 'customer_logic.dart';

class CustomerModel extends ChangeNotifier {
  CustomerLogic _logic;
  CustomerLogic get logic => _logic;

  CustomerModel() {
    _logic = CustomerLogic(this);
  }
}
