import 'package:flutter/material.dart';
import 'package:hmdi/module/module.dart';
import 'package:provider/provider.dart';

import 'booking_summary_model.dart';

ChangeNotifierProvider<BookingSummaryModel> createBookingSummary() {
  return ChangeNotifierProvider(
    create: (_) => BookingSummaryModel(),
    child: _BookingSummaryView(),
  );
}

class _BookingSummaryView extends StatefulWidget {
  @override
  _BookingSummaryViewState createState() => _BookingSummaryViewState();
}

class _BookingSummaryViewState extends State<_BookingSummaryView> {
  void _sendEmailClick(BuildContext context) {
    createSendEmailDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<BookingSummaryModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Booking Summary'),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: Navigator.of(context).pop,
          )
        ],
      ),
      body: Center(
        child: FlatButton(
          child: Icon(Icons.email),
          color: Colors.blue,
          onPressed: () => _sendEmailClick(context),
        ),
      ),
    );
  }
}
