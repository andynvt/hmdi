import 'package:flutter/material.dart';
import 'package:hmdi/module/module.dart';
import 'package:provider/provider.dart';

import 'quotation_detail_model.dart';

ChangeNotifierProvider<QuotationDetailModel> createQuotationDetail() {
  return ChangeNotifierProvider(
    create: (_) => QuotationDetailModel(),
    child: _QuotationDetailView(),
  );
}

class _QuotationDetailView extends StatefulWidget {
  @override
  _QuotationDetailViewState createState() => _QuotationDetailViewState();
}

class _QuotationDetailViewState extends State<_QuotationDetailView> {
  void _applyClick() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => createPricing()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<QuotationDetailModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Quotation Detail'),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: Navigator.of(context).pop,
          )
        ],
      ),
      body: Center(
        child: FlatButton(
          child: Text('Apply'),
          color: Colors.blue,
          onPressed: _applyClick,
        ),
      ),
    );
  }
}
