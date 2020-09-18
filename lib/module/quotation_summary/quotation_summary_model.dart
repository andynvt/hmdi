import 'package:flutter/material.dart';

import 'quotation_summary_logic.dart';

class QuotationSummaryModel extends ChangeNotifier {
  QuotationSummaryLogic _logic;
  QuotationSummaryLogic get logic => _logic;

  QuotationSummaryModel() {
    _logic = QuotationSummaryLogic(this);
  }
}
