import 'package:flutter/material.dart';

import 'vehicle_item_logic.dart';

class VehicleItemModel extends ChangeNotifier {
  VehicleItemLogic _logic;
  VehicleItemLogic get logic => _logic;

  VehicleItemModel() {
    _logic = VehicleItemLogic(this);
  }
}
