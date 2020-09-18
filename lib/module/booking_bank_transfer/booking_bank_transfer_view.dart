import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'booking_bank_transfer_model.dart';

ChangeNotifierProvider<BookingBankTransferModel> createBookingBankTransfer() {
  return ChangeNotifierProvider(
    create: (_) => BookingBankTransferModel(),
    child: _BookingBankTransferView(),
  );
}

class _BookingBankTransferView extends StatefulWidget {
  @override
  _BookingBankTransferViewState createState() => _BookingBankTransferViewState();
}

class _BookingBankTransferViewState extends State<_BookingBankTransferView> {
  void _completeClick() {}
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<BookingBankTransferModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Bank Transfer'),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: Navigator.of(context).pop,
          )
        ],
      ),
      body: Center(
        child: FlatButton(
          child: Text('Booking Complete transfer'),
          color: Colors.blue,
          onPressed: _completeClick,
        ),
      ),
    );
  }
}
