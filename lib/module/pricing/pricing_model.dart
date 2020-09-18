import 'package:flutter/material.dart';

import 'pricing_logic.dart';

class PricingModel extends ChangeNotifier {
  PricingLogic _logic;
  PricingLogic get logic => _logic;

  PricingModel() {
    _logic = PricingLogic(this);
  }
}
