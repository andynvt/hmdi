import 'package:flutter/material.dart';
import 'package:hmdi/module/module.dart';
import 'package:provider/provider.dart';

import 'stock_detail_model.dart';

ChangeNotifierProvider<StockDetailModel> createStockDetail() {
  return ChangeNotifierProvider(
    create: (_) => StockDetailModel(),
    child: _StockDetailView(),
  );
}

class _StockDetailView extends StatefulWidget {
  @override
  _StockDetailViewState createState() => _StockDetailViewState();
}

class _StockDetailViewState extends State<_StockDetailView> {
  void _quotationClick() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => createQuotation()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<StockDetailModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Stock Detail'),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: Navigator.of(context).pop,
          )
        ],
      ),
      body: Center(
        child: FlatButton(
          child: Text('Quotation'),
          color: Colors.blue,
          onPressed: _quotationClick,
        ),
      ),
    );
  }
}
