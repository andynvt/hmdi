import 'package:flutter/material.dart';

class VehicleInfo extends ChangeNotifier {
  final String id;
  String name;
  String subName;
  String price;
  String imageUrl;
  List<VehicleInfo> variants;

  VehicleInfo({this.id, this.name, this.subName, this.price, this.imageUrl, this.variants});
}
