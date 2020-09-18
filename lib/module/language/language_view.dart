import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'language_model.dart';

ChangeNotifierProvider<LanguageModel> createLanguage() {
  return ChangeNotifierProvider(
    create: (_) => LanguageModel(),
    child: _LanguageView(),
  );
}

class _LanguageView extends StatefulWidget {
  @override
  _LanguageViewState createState() => _LanguageViewState();
}

class _LanguageViewState extends State<_LanguageView> {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<LanguageModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Language'),
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
