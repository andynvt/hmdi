import 'package:flutter/material.dart';

import 'configurator_preview_logic.dart';

class ConfiguratorPreviewModel extends ChangeNotifier {
  ConfiguratorPreviewLogic _logic;
  ConfiguratorPreviewLogic get logic => _logic;

  ConfiguratorPreviewModel() {
    _logic = ConfiguratorPreviewLogic(this);
  }
}
