import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'vehicle_trim_filter_model.dart';

ChangeNotifierProvider<VehicleTrimFilterModel> createVehicleTrimFilter() {
  return ChangeNotifierProvider(
    create: (_) => VehicleTrimFilterModel(),
    child: _VehicleTrimFilterView(),
  );
}

class _VehicleTrimFilterView extends StatefulWidget {
  @override
  _VehicleTrimFilterViewState createState() => _VehicleTrimFilterViewState();
}

class _VehicleTrimFilterViewState extends State<_VehicleTrimFilterView> {
  void _filterApplyClick() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<VehicleTrimFilterModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Filter'),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: Navigator.of(context).pop,
          )
        ],
      ),
      body: Center(
        child: FlatButton(
          child: Text('Filter Apply'),
          color: Colors.blue,
          onPressed: _filterApplyClick,
        ),
      ),
    );
  }
}
