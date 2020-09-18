import 'package:flutter/material.dart';

import 'presentation_logic.dart';

class PresentationModel extends ChangeNotifier {
  PresentationLogic _logic;
  PresentationLogic get logic => _logic;

  PresentationModel() {
    _logic = PresentationLogic(this);
  }
}
