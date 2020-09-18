import 'package:flutter/material.dart';

import 'quotation_logic.dart';

class QuotationModel extends ChangeNotifier {
  QuotationLogic _logic;
  QuotationLogic get logic => _logic;

  QuotationModel() {
    _logic = QuotationLogic(this);
  }
}
