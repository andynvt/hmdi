import 'package:flutter/material.dart';

class VehicleInfo extends ChangeNotifier {
  String name;
  String subName;
  String price;
  String imageUrl;
  List<VehicleInfo> variants;

  VehicleInfo({this.name, this.subName, this.price, this.imageUrl, this.variants});
}
