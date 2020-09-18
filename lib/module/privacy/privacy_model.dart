import 'package:flutter/material.dart';

import 'privacy_logic.dart';

class PrivacyModel extends ChangeNotifier {
  PrivacyLogic _logic;
  PrivacyLogic get logic => _logic;

  PrivacyModel() {
    _logic = PrivacyLogic(this);
  }
}
