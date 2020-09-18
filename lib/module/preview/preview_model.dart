import 'package:flutter/material.dart';

import 'preview_logic.dart';

class PreviewModel extends ChangeNotifier {
  PreviewLogic _logic;
  PreviewLogic get logic => _logic;

  PreviewModel() {
    _logic = PreviewLogic(this);
  }
}
