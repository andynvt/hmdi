import 'package:flutter/material.dart';

import 'stock_detail_logic.dart';

class StockDetailModel extends ChangeNotifier {
  StockDetailLogic _logic;
  StockDetailLogic get logic => _logic;

  StockDetailModel() {
    _logic = StockDetailLogic(this);
  }
}
