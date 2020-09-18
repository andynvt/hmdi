import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pricing_model.dart';

ChangeNotifierProvider<PricingModel> createPricing() {
  return ChangeNotifierProvider(
    create: (_) => PricingModel(),
    child: _PricingView(),
  );
}

class _PricingView extends StatefulWidget {
  @override
  _PricingViewState createState() => _PricingViewState();
}

class _PricingViewState extends State<_PricingView> {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<PricingModel>(context);
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
