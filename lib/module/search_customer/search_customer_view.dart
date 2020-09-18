import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'search_customer_model.dart';

ChangeNotifierProvider<SearchCustomerModel> createSearchCustomer() {
  return ChangeNotifierProvider(
    create: (_) => SearchCustomerModel(),
    child: _SearchCustomerView(),
  );
}

class _SearchCustomerView extends StatefulWidget {
  @override
  _SearchCustomerViewState createState() => _SearchCustomerViewState();
}

class _SearchCustomerViewState extends State<_SearchCustomerView> {
  void _voiceClick() {}
  void _newCustomerClick() {}

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<SearchCustomerModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Search'),
        actions: [
          IconButton(
            icon: Icon(Icons.mic),
            onPressed: _voiceClick,
          ),
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
          onPressed: _newCustomerClick,
        ),
      ),
    );
  }
}
