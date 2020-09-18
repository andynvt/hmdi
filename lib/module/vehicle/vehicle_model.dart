import 'package:flutter/material.dart';

import 'vehicle_logic.dart';

class VehicleModel extends ChangeNotifier {
  VehicleLogic _logic;
  VehicleLogic get logic => _logic;

  VehicleModel() {
    _logic = VehicleLogic(this);
  }
}
