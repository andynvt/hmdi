import 'package:flutter/material.dart';

import 'quotation_compare_logic.dart';

class QuotationCompareModel extends ChangeNotifier {
  QuotationCompareLogic _logic;
  QuotationCompareLogic get logic => _logic;

  QuotationCompareModel() {
    _logic = QuotationCompareLogic(this);
  }
}
