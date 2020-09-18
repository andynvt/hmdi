import 'package:flutter/material.dart';

void createFeatureDetail(BuildContext context) {
  showModalBottomSheet(context: context, builder: (_) => _FeatureDetailView());
}

class _FeatureDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber[200],
      child: Center(
        child: Text('Feature detail'),
      ),
    );
  }
}
