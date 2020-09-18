import 'package:flutter/material.dart';

import 'vehicle_trim_filter_logic.dart';

class VehicleTrimFilterModel extends ChangeNotifier {
  VehicleTrimFilterLogic _logic;
  VehicleTrimFilterLogic get logic => _logic;

  VehicleTrimFilterModel() {
    _logic = VehicleTrimFilterLogic(this);
  }
}
