import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'customer_model.dart';

ChangeNotifierProvider<CustomerModel> createCustomer() {
  return ChangeNotifierProvider(
    create: (_) => CustomerModel(),
    child: _CustomerView(),
  );
}

class _CustomerView extends StatefulWidget {
  @override
  _CustomerViewState createState() => _CustomerViewState();
}

class _CustomerViewState extends State<_CustomerView> {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<CustomerModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Customer'),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: Navigator.of(context).pop,
          )
        ],
      ),
    );
  }
}
