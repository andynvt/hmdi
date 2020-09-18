import 'package:flutter/material.dart';

import 'customer_edit_logic.dart';

class CustomerEditModel extends ChangeNotifier {
  CustomerEditLogic _logic;
  CustomerEditLogic get logic => _logic;

  CustomerEditModel() {
    _logic = CustomerEditLogic(this);
  }
}
