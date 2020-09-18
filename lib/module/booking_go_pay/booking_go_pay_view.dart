import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../module.dart';
import 'booking_go_pay_model.dart';

ChangeNotifierProvider<BookingGoPayModel> createBookingGoPay() {
  return ChangeNotifierProvider(
    create: (_) => BookingGoPayModel(),
    child: _BookingGoPayView(),
  );
}

class _BookingGoPayView extends StatefulWidget {
  @override
  _BookingGoPayViewState createState() => _BookingGoPayViewState();
}

class _BookingGoPayViewState extends State<_BookingGoPayView> {
  void _paidClick(BuildContext context) {
    createBookingCompleteDialog(context);
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<BookingGoPayModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Pay Online Now'),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: Navigator.of(context).pop,
          )
        ],
      ),
      body: Center(
        child: FlatButton(
          child: Text('Already Paid'),
          color: Colors.blue,
          onPressed: () => _paidClick(context),
        ),
      ),
    );
  }
}
