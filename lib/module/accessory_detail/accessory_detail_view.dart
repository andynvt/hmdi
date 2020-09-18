import 'package:flutter/material.dart';

void createAccessoryDetail(BuildContext context) {
  showModalBottomSheet(context: context, builder: (_) => _AccessoryDetailView());
}

class _AccessoryDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[200],
      child: Center(
        child: Text('Accessory detail'),
      ),
    );
  }
}
