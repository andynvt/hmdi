import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'customer_edit_model.dart';

ChangeNotifierProvider<CustomerEditModel> createCustomerEdit() {
  return ChangeNotifierProvider(
    create: (_) => CustomerEditModel(),
    child: _CustomerEditView(),
  );
}

class _CustomerEditView extends StatefulWidget {
  @override
  _CustomerEditViewState createState() => _CustomerEditViewState();
}

class _CustomerEditViewState extends State<_CustomerEditView> {
  void _editCustomerClick() {}
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<CustomerEditModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Edit Customer'),
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
          onPressed: _editCustomerClick,
        ),
      ),
    );
  }
}
