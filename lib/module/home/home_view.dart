import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_model.dart';

ChangeNotifierProvider<HomeModel> createHome() {
  return ChangeNotifierProvider(
    create: (_) => HomeModel(),
    child: _HomeView(),
  );
}

class _HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<_HomeView> {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
    );
  }
}
