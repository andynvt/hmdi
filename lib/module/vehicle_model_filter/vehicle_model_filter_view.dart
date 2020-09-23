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
  final List<bool> selected = [true, true, true, true, true, true, true, true, true, true];
  void filterApplyClick() {
    Navigator.of(context).pop();
  }

  void resetClick() {
    //TODO: reset filter
  }
  void _filterApplyClick() {
    //TODO: apply filter
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<VehicleModelFilterModel>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        brightness: Brightness.light,
        elevation: 0,
        title: Text(
          'Filter',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.black,
            ),
            onPressed: Navigator.of(context).pop,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 1,
            color: Colors.grey[400],
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, right: 10),
            alignment: Alignment.topRight,
            child: FlatButton(
              onPressed: resetClick,
              child: Text(
                'Reset',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 15, bottom: 20),
            child: buildItemFilter(8, 'Select All'),
          ),
          Container(
            height: 1,
            color: Colors.grey[400],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 5),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                buildItemFilter(0, 'At a Glance'),
                buildItemFilter(1, 'Exteior'),
                buildItemFilter(2, 'Inteior'),
                buildItemFilter(3, 'Primary Safety'),
                buildItemFilter(4, 'Secondary Safety'),
                buildItemFilter(5, 'Engine & Transmossion'),
                buildItemFilter(6, 'Dimensions & Weights'),
                buildItemFilter(7, 'Equipment'),
              ],
            ),
          ),
          Spacer(),
          SafeArea(
            child: Container(
              width: double.infinity,
              height: 60,
              color: Colors.blue[900],
              child: FlatButton(
                onPressed: _filterApplyClick,
                child: Text(
                  'Filter Apply',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildItemFilter(int index, String title, {Function onchanged}) {
    bool isSelect = true;
    if (index < 8) {
      isSelect = selected[index];
    } else {
      isSelect = !selected.contains(false);
    }
    return SizedBox(
      height: 50,
      child: FlatButton(
        onPressed: () {
          if (index == 8) {
            setState(() {
              selected.clear();
              selected.addAll(List.generate(9, (index) => true));
            });
            return;
          }
          setState(() {
            selected[index] = !selected[index];
          });
        },
        color: isSelect ? Colors.lightBlue : Colors.grey[300],
        child: Padding(
          padding: const EdgeInsets.only(
            left: 12,
            right: 12,
          ),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
