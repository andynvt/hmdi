import 'package:flutter/material.dart';

import 'booking_bank_transfer_logic.dart';

class BookingBankTransferModel extends ChangeNotifier {
  BookingBankTransferLogic _logic;
  BookingBankTransferLogic get logic => _logic;

  BookingBankTransferModel() {
    _logic = BookingBankTransferLogic(this);
  }
}
