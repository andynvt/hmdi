import 'package:flutter/material.dart';

import 'language_logic.dart';

class LanguageModel extends ChangeNotifier {
  LanguageLogic _logic;
  LanguageLogic get logic => _logic;

  LanguageModel() {
    _logic = LanguageLogic(this);
  }
}
