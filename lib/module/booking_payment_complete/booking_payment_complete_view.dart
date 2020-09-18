import 'package:flutter/material.dart';

void createBookingPaymentComplete(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) => _BookingPaymentCompleteView(),
  );
}

class _BookingPaymentCompleteView extends StatefulWidget {
  @override
  _BookingPaymentCompleteViewState createState() => _BookingPaymentCompleteViewState();
}

class _BookingPaymentCompleteViewState extends State<_BookingPaymentCompleteView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.amber,
      child: Center(
        child: FlatButton(
          color: Colors.blue,
          onPressed: Navigator.of(context).pop,
          child: Text('OK'),
        ),
      ),
    );
  }
}
