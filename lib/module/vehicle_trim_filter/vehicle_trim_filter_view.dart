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
      backgroundColor: Colors.white,
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
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'Required Field',
                          style: TextStyle(fontSize: 15),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.blueAccent,
                          size: 10,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'Year',
                          style: TextStyle(fontSize: 15),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.blueAccent,
                          size: 10,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        buildYearSelect('2019'),
                        SizedBox(width: 10),
                        buildYearSelect('2020'),
                        SizedBox(width: 10),
                        buildYearSelect('2021'),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'Model',
                          style: TextStyle(fontSize: 15),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.blueAccent,
                          size: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                      child: FlatButton.icon(
                        onPressed: () {},
                        label: Text(
                          'KONA',
                        ),
                        icon: Icon(Icons.arrow_drop_down),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Exterior',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Expanded(
                      child: GridView.builder(
                        itemCount: 7,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          crossAxisSpacing: 30,
                          mainAxisSpacing: 30,
                        ),
                        padding: const EdgeInsets.only(right: 30, left: 30, top: 30, bottom: 30),
                        itemBuilder: (_, index) {
                          return Container(
                            color: Colors.redAccent,
                            child: Text('Red'),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
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

  Widget buildYearSelect(String year) {
    return Container(
      height: 45,
      child: FlatButton(
        color: Colors.lightBlue,
        onPressed: () {},
        child: Text(
          year,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
