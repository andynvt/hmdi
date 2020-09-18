import 'package:flutter/material.dart';
import 'package:hmdi/config/config.dart';
import 'package:hmdi/service/service.dart';

import 'module/module.dart';
import 'service/service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheService.init();
  LanguageService.init(LanguageEnum.values.map((e) => langToStr(e)).toList());

  runApp(HMDIApp());
}
