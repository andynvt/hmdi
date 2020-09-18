import 'package:flutter/material.dart';

import 'presentation_detail_logic.dart';

class PresentationDetailModel extends ChangeNotifier {
  PresentationDetailLogic _logic;
  PresentationDetailLogic get logic => _logic;

  PresentationDetailModel() {
    _logic = PresentationDetailLogic(this);
  }
}
