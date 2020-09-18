import 'package:flutter/material.dart';

import 'customer_create_logic.dart';

class CustomerCreateModel extends ChangeNotifier {
  CustomerCreateLogic _logic;
  CustomerCreateLogic get logic => _logic;

  CustomerCreateModel() {
    _logic = CustomerCreateLogic(this);
  }
}
