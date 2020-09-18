import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<QuotationDetailModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotation detail'),
      ),
    );
  }
}
