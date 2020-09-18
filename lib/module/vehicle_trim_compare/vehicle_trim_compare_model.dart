import 'package:flutter/material.dart';

import 'vehicle_trim_compare_logic.dart';

class VehicleTrimCompareModel extends ChangeNotifier {
  VehicleTrimCompareLogic _logic;
  VehicleTrimCompareLogic get logic => _logic;

  VehicleTrimCompareModel() {
    _logic = VehicleTrimCompareLogic(this);
  }
}
