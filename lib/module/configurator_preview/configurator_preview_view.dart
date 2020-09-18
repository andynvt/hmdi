import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'configurator_preview_model.dart';

ChangeNotifierProvider<ConfiguratorPreviewModel> createConfiguratorPreview() {
  return ChangeNotifierProvider(
    create: (_) => ConfiguratorPreviewModel(),
    child: _ConfiguratorPreviewView(),
  );
}

class _ConfiguratorPreviewView extends StatefulWidget {
  @override
  _ConfiguratorPreviewViewState createState() => _ConfiguratorPreviewViewState();
}

class _ConfiguratorPreviewViewState extends State<_ConfiguratorPreviewView> {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<ConfiguratorPreviewModel>(context);
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
