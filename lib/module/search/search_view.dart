import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'search_model.dart';

ChangeNotifierProvider<SearchModel> createSearch() {
  return ChangeNotifierProvider(
    create: (_) => SearchModel(),
    child: _SearchView(),
  );
}

class _SearchView extends StatefulWidget {
  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<_SearchView> {
  void _voiceClick() {}
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<SearchModel>(context);
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
    );
  }
}
