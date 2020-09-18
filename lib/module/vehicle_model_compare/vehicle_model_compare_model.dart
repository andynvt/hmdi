import 'package:flutter/material.dart';

import 'vehicle_model_compare_logic.dart';

class VehicleModelCompareModel extends ChangeNotifier {
  VehicleModelCompareLogic _logic;
  VehicleModelCompareLogic get logic => _logic;

  VehicleModelCompareModel() {
    _logic = VehicleModelCompareLogic(this);
  }
}
