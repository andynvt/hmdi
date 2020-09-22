import 'package:flutter/material.dart';
import 'package:hmdi/model/model.dart';
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
  int _tabIndex = 0;

  List<VehicleInfo> _vehicles = [
    VehicleInfo(
      id: '1',
      name: 'KONA',
      subName: 'dari',
      price: 'Rp. 351,839,475',
      imageUrl: 'https://www.hyundai.com/eu/dam/hpp/hway/model/M00118.png',
      variants: [
        VehicleInfo(
          id: '1-1',
          name: 'Gasoline 2.0 AT GRG',
          subName: 'dari',
          price: 'Rp. 351,839,475',
          imageUrl: 'https://www.hyundai.com/eu/dam/hpp/hway/model/M00118.png',
        ),
        VehicleInfo(
          id: '1-2',
          name: 'Gasoline 3.xxxx AT GRG',
          subName: 'dari',
          price: 'Rp. 351,839,475',
          imageUrl: 'https://www.hyundai.com/eu/dam/hpp/hway/model/M00118.png',
        ),
        VehicleInfo(
          id: '1-3',
          name: 'Gasoline 4.xxxx AT GRG',
          subName: 'dari',
          price: 'Rp. 351,839,475',
          imageUrl: 'https://www.hyundai.com/eu/dam/hpp/hway/model/M00118.png',
        ),
      ],
    ),
    VehicleInfo(
      id: '2',
      name: 'KONA Electric',
      subName: 'dari2',
      price: 'Rp. 351,839,4752',
      imageUrl: 'https://www.hyundai.com/eu/dam/hpp/hway/model/M00118.png',
      variants: [
        VehicleInfo(
          id: '2-1',
          name: 'Gasoline 22.0 AT GRG',
          subName: 'dari',
          price: 'Rp. 351,839,475',
          imageUrl: 'https://www.hyundai.com/eu/dam/hpp/hway/model/M00118.png',
        ),
        VehicleInfo(
          id: '2-2',
          name: 'Gasoline 23.xxxx AT GRG',
          subName: 'dari',
          price: 'Rp. 351,839,475',
          imageUrl: 'https://www.hyundai.com/eu/dam/hpp/hway/model/M00118.png',
        ),
      ],
    ),
    VehicleInfo(
      id: '3',
      name: 'IONIQ Electric',
      subName: 'dari2',
      price: 'Rp. 351,839,4752',
      imageUrl: 'https://www.hyundai.com/eu/dam/hpp/hway/model/M00118.png',
      variants: [],
    ),
    VehicleInfo(
      id: '4',
      name: 'IONIQ Electric 2',
      subName: 'dari2',
      price: 'Rp. 351,839,4752',
      imageUrl: 'https://www.hyundai.com/eu/dam/hpp/hway/model/M00118.png',
      variants: [],
    ),
    VehicleInfo(
      id: '5',
      name: 'IONIQ Electric 2',
      subName: 'dari2',
      price: 'Rp. 351,839,4752',
      imageUrl: 'https://www.hyundai.com/eu/dam/hpp/hway/model/M00118.png',
      variants: [],
    ),
    VehicleInfo(
      id: '6',
      name: 'IONIQ Electric 3',
      subName: 'dari2',
      price: 'Rp. 351,839,4752',
      imageUrl: 'https://www.hyundai.com/eu/dam/hpp/hway/model/M00118.png',
      variants: [],
    ),
    VehicleInfo(
      id: '7',
      name: 'IONIQ Electric 4',
      subName: 'dari2',
      price: 'Rp. 351,839,4752',
      imageUrl: 'https://www.hyundai.com/eu/dam/hpp/hway/model/M00118.png',
      variants: [],
    ),
    VehicleInfo(
      id: '8',
      name: 'IONIQ Electric 5',
      subName: 'dari2',
      price: 'Rp. 351,839,4752',
      imageUrl: 'https://www.hyundai.com/eu/dam/hpp/hway/model/M00118.png',
      variants: [],
    ),
  ];

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
  void initState() {
    super.initState();
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
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _tabIndex = 0;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 45),
                                child: Text('Model'),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 45),
                                child: InkWell(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(23),
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black,
                                    ),
                                    child: Icon(
                                      Icons.filter_list,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 3,
                        color: _tabIndex == 0 ? Colors.blue : Colors.transparent,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _tabIndex = 1;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        child: Center(
                          child: Text('Stock'),
                        ),
                        // color: Colors.grey,
                      ),
                      Container(
                        height: 3,
                        color: _tabIndex == 1 ? Colors.blue : Colors.transparent,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            color: Colors.grey[300],
            height: 1,
          ),
          Expanded(
            child: () {
              if (_tabIndex == 0) {
                return ListView.builder(
                  itemCount: _vehicles.length,
                  itemBuilder: (_, index) {
                    return createVehicleItemWidget(_vehicles[index]);
                  },
                );
              }
              return Container(
                color: Colors.amber,
              );
            }(),
          ),
        ],
      ),
    );
  }
}
