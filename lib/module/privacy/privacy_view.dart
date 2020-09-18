import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'privacy_model.dart';

ChangeNotifierProvider<PrivacyModel> createPrivacy() {
  return ChangeNotifierProvider(
    create: (_) => PrivacyModel(),
    child: _PrivacyView(),
  );
}

class _PrivacyView extends StatefulWidget {
  @override
  _PrivacyViewState createState() => _PrivacyViewState();
}

class _PrivacyViewState extends State<_PrivacyView> {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<PrivacyModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Privacy Policy'),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: Navigator.of(context).pop,
          ),
        ],
      ),
    );
  }
}
