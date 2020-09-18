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
  void _quotationDetailClick() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => createQuotationDetail()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<QuotationModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotation'),
      ),
      body: Center(
        child: FlatButton(
          child: Text('Detail'),
          color: Colors.blue,
          onPressed: _quotationDetailClick,
        ),
      ),
    );
  }
}
