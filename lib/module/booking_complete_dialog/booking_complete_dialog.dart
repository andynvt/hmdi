import 'package:flutter/material.dart';

void createBookingCompleteDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) => _BookingCompleteView(),
  );
}

class _BookingCompleteView extends StatefulWidget {
  @override
  _BookingCompleteViewState createState() => _BookingCompleteViewState();
}

class _BookingCompleteViewState extends State<_BookingCompleteView> {
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
