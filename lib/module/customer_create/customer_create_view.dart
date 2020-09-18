import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'customer_create_model.dart';

ChangeNotifierProvider<CustomerCreateModel> createCustomerCreate() {
  return ChangeNotifierProvider(
    create: (_) => CustomerCreateModel(),
    child: _CustomerCreateView(),
  );
}

class _CustomerCreateView extends StatefulWidget {
  @override
  _CustomerCreateViewState createState() => _CustomerCreateViewState();
}

class _CustomerCreateViewState extends State<_CustomerCreateView> {
  void _addCustomerClick() {}
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<CustomerCreateModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('New Customer'),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: Navigator.of(context).pop,
          )
        ],
      ),
      body: Center(
        child: FlatButton(
          child: Text('New Customer'),
          color: Colors.blue,
          onPressed: _addCustomerClick,
        ),
      ),
    );
  }
}
