import 'package:flutter/material.dart';
import 'package:hmdi/module/module.dart';
import 'package:provider/provider.dart';

import 'vehicle_model.dart';

ChangeNotifierProvider<VehicleModel> createVehicle() {
  return ChangeNotifierProvider(
    create: (_) => VehicleModel(),
    child: _VehicleView(),
  );
}

class _VehicleView extends StatefulWidget {
  @override
  _VehicleViewState createState() => _VehicleViewState();
}

class _VehicleViewState extends State<_VehicleView> {
  void _compareClick() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => createVehicleModelCompare()),
    );
  }

  void _stockDetailClick() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => createStockDetail()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<VehicleModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Vehicle'),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: Navigator.of(context).pop,
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FlatButton(
              child: Text('Compare'),
              color: Colors.blue,
              onPressed: _compareClick,
            ),
            FlatButton(
              child: Text('Stock detail'),
              color: Colors.blue,
              onPressed: _stockDetailClick,
            ),
          ],
        ),
      ),
    );
  }
}
