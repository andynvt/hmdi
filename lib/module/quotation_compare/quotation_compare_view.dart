import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'quotation_compare_model.dart';

ChangeNotifierProvider<QuotationCompareModel> createQuotationCompare() {
  return ChangeNotifierProvider(
    create: (_) => QuotationCompareModel(),
    child: _QuotationCompareView(),
  );
}

class _QuotationCompareView extends StatefulWidget {
  @override
  _QuotationCompareViewState createState() => _QuotationCompareViewState();
}

class _QuotationCompareViewState extends State<_QuotationCompareView> {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<QuotationCompareModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Quotation Compare'),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: Navigator.of(context).pop,
          )
        ],
      ),
    );
  }
}
