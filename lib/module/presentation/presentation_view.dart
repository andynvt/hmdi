import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'presentation_model.dart';

ChangeNotifierProvider<PresentationModel> createPresentation() {
  return ChangeNotifierProvider(
    create: (_) => PresentationModel(),
    child: _PresentationView(),
  );
}

class _PresentationView extends StatefulWidget {
  @override
  _PresentationViewState createState() => _PresentationViewState();
}

class _PresentationViewState extends State<_PresentationView> {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<PresentationModel>(context);
    return Container(
      color: Colors.amber[200],
    );
  }
}
