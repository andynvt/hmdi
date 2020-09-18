import 'package:flutter/material.dart';

import 'configurator_logic.dart';

class ConfiguratorModel extends ChangeNotifier {
  ConfiguratorLogic _logic;
  ConfiguratorLogic get logic => _logic;

  ConfiguratorModel() {
    _logic = ConfiguratorLogic(this);
  }
}
