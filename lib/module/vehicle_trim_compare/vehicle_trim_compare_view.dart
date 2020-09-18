import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../module.dart';
import 'vehicle_trim_compare_model.dart';

ChangeNotifierProvider<VehicleTrimCompareModel> createVehicleTrimCompare() {
  return ChangeNotifierProvider(
    create: (_) => VehicleTrimCompareModel(),
    child: _VehicleTrimCompareView(),
  );
}

class _VehicleTrimCompareView extends StatefulWidget {
  @override
  _VehicleTrimCompareViewState createState() => _VehicleTrimCompareViewState();
}

class _VehicleTrimCompareViewState extends State<_VehicleTrimCompareView> {
  void _quotationClick() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => createQuotation()),
    );
  }

  void _filterClick() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => createVehicleTrimFilter()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<VehicleTrimCompareModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Trim Compare'),
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
