import 'package:flutter/material.dart';

import 'booking_summary_logic.dart';

class BookingSummaryModel extends ChangeNotifier {
  BookingSummaryLogic _logic;
  BookingSummaryLogic get logic => _logic;

  BookingSummaryModel() {
    _logic = BookingSummaryLogic(this);
  }
}
