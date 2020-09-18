import 'package:flutter/material.dart';
import 'package:hmdi/module/module.dart';
import 'package:provider/provider.dart';

import 'vehicle_model_compare_model.dart';

ChangeNotifierProvider<VehicleModelCompareModel> createVehicleModelCompare() {
  return ChangeNotifierProvider(
    create: (_) => VehicleModelCompareModel(),
    child: _VehicleModelCompareView(),
  );
}

class _VehicleModelCompareView extends StatefulWidget {
  @override
  _VehicleModelCompareViewState createState() => _VehicleModelCompareViewState();
}

class _VehicleModelCompareViewState extends State<_VehicleModelCompareView> {
  void _quotationClick() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => createQuotation()),
    );
  }

  void _filterClick() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => createVehicleModelFilter()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<VehicleModelCompareModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Model Compare'),
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
              child: Icon(Icons.filter_list),
              color: Colors.blue,
              onPressed: _filterClick,
            ),
            FlatButton(
              child: Text('Quotation'),
              color: Colors.blue,
              onPressed: _quotationClick,
            ),
          ],
        ),
      ),
    );
  }
}
