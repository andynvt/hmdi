import 'package:flutter/material.dart';
import 'package:hmdi/module/module.dart';
import 'package:provider/provider.dart';

import 'quotation_model.dart';

ChangeNotifierProvider<QuotationModel> createQuotation() {
  return ChangeNotifierProvider(
    create: (_) => QuotationModel(),
    child: _QuotationView(),
  );
}

class _QuotationView extends StatefulWidget {
  @override
  _QuotationViewState createState() => _QuotationViewState();
}

class _QuotationViewState extends State<_QuotationView> {
  void _completeClick() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => createQuotationDetail()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<QuotationModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Quotation'),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: Navigator.of(context).pop,
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FlatButton(
              child: Text('Quotation Complete'),
              color: Colors.blue,
              onPressed: _completeClick,
            ),
          ],
        ),
      ),
    );
  }
}
