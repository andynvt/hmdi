import 'package:flutter/material.dart';

import 'quotation_detail_logic.dart';

class QuotationDetailModel extends ChangeNotifier {
  QuotationDetailLogic _logic;
  QuotationDetailLogic get logic => _logic;

  QuotationDetailModel() {
    _logic = QuotationDetailLogic(this);
  }
}
