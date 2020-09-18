import 'package:flutter/material.dart';

import 'booking_go_pay_logic.dart';

class BookingGoPayModel extends ChangeNotifier {
  BookingGoPayLogic _logic;
  BookingGoPayLogic get logic => _logic;

  BookingGoPayModel() {
    _logic = BookingGoPayLogic(this);
  }
}
