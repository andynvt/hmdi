import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'presentation_detail_model.dart';

ChangeNotifierProvider<PresentationDetailModel> createPresentationDetail() {
  return ChangeNotifierProvider(
    create: (_) => PresentationDetailModel(),
    child: _PresentationDetailView(),
  );
}

class _PresentationDetailView extends StatefulWidget {
  @override
  _PresentationDetailViewState createState() => _PresentationDetailViewState();
}

class _PresentationDetailViewState extends State<_PresentationDetailView> {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<PresentationDetailModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Presentation detail'),
      ),
    );
  }
}
