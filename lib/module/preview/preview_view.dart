import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'preview_model.dart';

ChangeNotifierProvider<PreviewModel> createPreview() {
  return ChangeNotifierProvider(
    create: (_) => PreviewModel(),
    child: _PreviewView(),
  );
}

class _PreviewView extends StatefulWidget {
  @override
  _PreviewViewState createState() => _PreviewViewState();
}

class _PreviewViewState extends State<_PreviewView> {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<PreviewModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Unity preview'),
      ),
      body: Container(
        color: Colors.grey[200],
        child: Center(
          child: IconButton(
            icon: Icon(Icons.fullscreen_exit),
            onPressed: Navigator.of(context).pop,
          ),
        ),
      ),
    );
  }
}
