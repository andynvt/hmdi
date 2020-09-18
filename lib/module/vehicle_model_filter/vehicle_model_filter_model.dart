import 'package:flutter/material.dart';

import 'vehicle_model_filter_logic.dart';

class VehicleModelFilterModel extends ChangeNotifier {
  VehicleModelFilterLogic _logic;
  VehicleModelFilterLogic get logic => _logic;

  VehicleModelFilterModel() {
    _logic = VehicleModelFilterLogic(this);
  }
}
