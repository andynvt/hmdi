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
  void _fullScreenClick() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => createConfiguratorPreview()),
    );
  }

  void _accessoryDetailClick(BuildContext context) {
    createAccessoryDetail(context);
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<ConfiguratorModel>(context);
    return Container(
      color: Colors.blue[100],
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FlatButton(
              onPressed: _fullScreenClick,
              color: Colors.blue,
              child: Icon(Icons.fullscreen),
            ),
            FlatButton(
              onPressed: () => _accessoryDetailClick(context),
              color: Colors.amber,
              child: Text('Accessory detail'),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => createQuotation()),
                );
              },
              color: Colors.blue,
              child: Text('Quotation test'),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => createBookingPayment()),
                );
              },
              color: Colors.amber,
              child: Text('Booking test'),
            ),
          ],
        ),
      ),
    );
  }
}
