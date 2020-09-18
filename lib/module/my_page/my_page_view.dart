import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_page_model.dart';

ChangeNotifierProvider<MyPageModel> createMyPage() {
  return ChangeNotifierProvider(
    create: (_) => MyPageModel(),
    child: _MyPageView(),
  );
}

class _MyPageView extends StatefulWidget {
  @override
  _MyPageViewState createState() => _MyPageViewState();
}

class _MyPageViewState extends State<_MyPageView> {
  void _logoutClick() {}
  void _changeLanguageClick() {}
  void _privacyClick() {}
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<MyPageModel>(context);
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FlatButton(
            child: Text('Logout'),
            color: Colors.blue,
            onPressed: _logoutClick,
          ),
          FlatButton(
            child: Text('Change language'),
            color: Colors.amber,
            onPressed: _changeLanguageClick,
          ),
          FlatButton(
            child: Text('Privacy Policy'),
            color: Colors.blue,
            onPressed: _privacyClick,
          ),
        ],
      ),
    );
  }
}
