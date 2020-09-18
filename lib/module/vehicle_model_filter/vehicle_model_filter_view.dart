import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'vehicle_model_filter_model.dart';

ChangeNotifierProvider<VehicleModelFilterModel> createVehicleModelFilter() {
  return ChangeNotifierProvider(
    create: (_) => VehicleModelFilterModel(),
    child: _VehicleModelFilterView(),
  );
}

class _VehicleModelFilterView extends StatefulWidget {
  @override
  _VehicleModelFilterViewState createState() => _VehicleModelFilterViewState();
}

class _VehicleModelFilterViewState extends State<_VehicleModelFilterView> {
  void _filterApplyClick() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<VehicleModelFilterModel>(context);
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
