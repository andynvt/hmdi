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
  int tabIndex = 0;
  bool isSelectedMode = false;
  final Map<String, VehicleInfo> selectedMap = {};

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
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
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
                          tabIndex = 0;
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
                                      onTap: () {
                                        setState(() {
                                          isSelectedMode = !isSelectedMode;
                                        });
                                      },
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
                            color: tabIndex == 0 ? Colors.blue : Colors.transparent,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          tabIndex = 1;
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
                            color: tabIndex == 1 ? Colors.blue : Colors.transparent,
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
                  if (tabIndex == 0) {
                    return ListView.builder(
                      itemCount: _vehicles.length,
                      itemBuilder: (_, index) {
                        if (!isSelectedMode) {
                          return createVehicleItemWidget(_vehicles[index]);
                        } else {
                          return buildSelectItem(_vehicles[index]);
                        }
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
        ),
        () {
          if (!isSelectedMode) {
            return SizedBox();
          }
          double h = MediaQuery.of(context).padding.top + kToolbarHeight + 50;
          int length = selectedMap.length;
          return Material(
            child: Container(
              color: Colors.blueGrey[900],
              height: h,
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(bottom: 16),
              child: Row(
                children: [
                  SizedBox(width: 16),
                  SizedBox(
                    width: 35,
                    height: 35,
                    child: FlatButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        setState(() {
                          isSelectedMode = false;
                        });
                      },
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 32),
                  SizedBox(
                    width: 200,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$length Selected',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            SizedBox(
                              height: 40,
                              child: FlatButton(
                                onPressed: () {
                                  //TODO; Delete selectedMap
                                  print('Delete: $selectedMap');
                                },
                                color: length == 0 ? Colors.white38 : Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                                child: Text(
                                  'Delete',
                                  style: TextStyle(
                                    color: Colors.blueGrey[900],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 16),
                            SizedBox(
                              height: 40,
                              child: FlatButton(
                                onPressed: () {
                                  //TODO; Compare selectedMap
                                  print('Compare: $selectedMap');
                                },
                                color: length < 2 ? Colors.white38 : Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                                child: Text(
                                  'Compare',
                                  style: TextStyle(
                                    color: Colors.blueGrey[900],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          );
        }()
      ],
    );
  }

  Widget buildSelectItem(VehicleInfo info) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          child: Row(
            children: [
              SizedBox(width: 16),
              InkWell(
                onTap: () {
                  setState(() {
                    if (selectedMap[info.id] == null) {
                      selectedMap[info.id] = info;
                    } else {
                      selectedMap.removeWhere((key, value) => key == info.id);
                    }
                  });
                },
                borderRadius: BorderRadius.circular(100),
                child: Icon(
                  Icons.check_circle,
                  size: 30,
                  color: selectedMap[info.id] != null ? Colors.blue : Colors.grey[400],
                ),
              ),
              SizedBox(width: 32),
              Image.network(
                info.imageUrl,
                height: 55,
              ),
              SizedBox(width: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(info.name),
                  Text(info.subName),
                  SizedBox(height: 8),
                  Text(
                    info.price,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 55),
          height: 1,
          color: Colors.grey[300],
        )
      ],
    );
  }
}
