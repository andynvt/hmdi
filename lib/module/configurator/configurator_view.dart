import 'package:flutter/material.dart';
import 'package:hmdi/module/module.dart';
import 'package:provider/provider.dart';

import 'configurator_model.dart';

ChangeNotifierProvider<ConfiguratorModel> createConfigurator() {
  return ChangeNotifierProvider(
    create: (_) => ConfiguratorModel(),
    child: _ConfiguratorView(),
  );
}

class _ConfiguratorView extends StatefulWidget {
  @override
  _ConfiguratorViewState createState() => _ConfiguratorViewState();
}

class _ConfiguratorViewState extends State<_ConfiguratorView> {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<ConfiguratorModel>(context);
    return Container(
      color: Colors.blue[100],
      child: Center(
        child: FlatButton(
          onPressed: () => createAccessoryDetail(context),
          color: Colors.blue,
          child: Text('Accessory detail'),
        ),
      ),
    );
  }
}
