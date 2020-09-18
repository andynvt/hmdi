import 'package:flutter/material.dart';
import 'package:hmdi/module/module.dart';
import 'package:provider/provider.dart';

import 'booking_payment_model.dart';

ChangeNotifierProvider<BookingPaymentModel> createBookingPayment() {
  return ChangeNotifierProvider(
    create: (_) => BookingPaymentModel(),
    child: _BookingPaymentView(),
  );
}

class _BookingPaymentView extends StatefulWidget {
  @override
  _BookingPaymentViewState createState() => _BookingPaymentViewState();
}

class _BookingPaymentViewState extends State<_BookingPaymentView> {
  void _bankTransferClick() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => createBookingBankTransfer()),
    );
  }

  void _gopayClick() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => createBookingGoPay()),
    );
  }

  void _dealerClick() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => createBookingSummary()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<BookingPaymentModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Booking Payment'),
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
              child: Text('Bank transfer'),
              color: Colors.blue,
              onPressed: _bankTransferClick,
            ),
            FlatButton(
              child: Text('Go Pay'),
              color: Colors.blue,
              onPressed: _gopayClick,
            ),
            FlatButton(
              child: Text('Visit dealer to pay'),
              color: Colors.amber,
              onPressed: _dealerClick,
            ),
          ],
        ),
      ),
    );
  }
}
