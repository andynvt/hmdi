import 'package:flutter/material.dart';

import 'booking_payment_logic.dart';

class BookingPaymentModel extends ChangeNotifier {
  BookingPaymentLogic _logic;
  BookingPaymentLogic get logic => _logic;

  BookingPaymentModel() {
    _logic = BookingPaymentLogic(this);
  }
}
