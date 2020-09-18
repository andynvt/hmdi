import 'package:hmdi/config/config.dart';

import 'app_localizations.dart';
import 'app_localizations_delegate.dart';
import 'package:flutter/material.dart';

class LanguageService extends ChangeNotifier {
  static LanguageService _sInstance;
  AppLocalizationsDelegate delegate;
  LanguageService._();

  Locale currentLocale = langToLocale(LanguageEnum.ENGLISH);

  static void init(List<String> locales) {
    assert(locales != null);
    LanguageService.shared().delegate = AppLocalizationsDelegate(locales);
  }

  factory LanguageService.shared() {
    if (_sInstance == null) {
      _sInstance = LanguageService._();
    }
    return _sInstance;
  }

  void changeLanguage(LanguageEnum type) {
    currentLocale = langToLocale(type);
    notifyListeners();
  }

  static AppLocalizations get get => LanguageService.shared().delegate.localizations;
}

final AppLocalizations l10n = LanguageService.get;
