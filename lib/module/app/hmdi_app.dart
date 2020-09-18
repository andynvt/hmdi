import 'package:flutter/material.dart';
import 'package:hmdi/module/module.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hmdi/widget/consum.dart';

import '../../service/service.dart';

class HMDIApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consum<LanguageService>(
      value: LanguageService.shared(),
      builder: (context, lang) {
        return MaterialApp(
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            lang.delegate,
          ],
          supportedLocales: [
            const Locale('en', 'US'),
            const Locale('ko', 'KR'),
          ],
          locale: lang.currentLocale,
          home: createSplash(),
        );
      },
    );
  }
}
