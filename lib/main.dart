import 'package:flutter/material.dart';
import 'package:hmdi/service/service.dart';

import 'module/module.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheService.init();
  runApp(HMDIApp());
}
