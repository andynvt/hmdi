import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'quotation_summary_model.dart';

ChangeNotifierProvider<QuotationSummaryModel> createQuotationSummary() {
  return ChangeNotifierProvider(
    create: (_) => QuotationSummaryModel(),
    child: _QuotationSummaryView(),
  );
}

class _QuotationSummaryView extends StatefulWidget {
  @override
  _QuotationSummaryViewState createState() => _QuotationSummaryViewState();
}

class _QuotationSummaryViewState extends State<_QuotationSummaryView> {
  void _bookClick() {}
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<QuotationSummaryModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Quotation Summary'),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: Navigator.of(context).pop,
          )
        ],
      ),
      body: Center(
        child: FlatButton(
          child: Text('Book now'),
          color: Colors.blue,
          onPressed: _bookClick,
        ),
      ),
    );
  }
}
