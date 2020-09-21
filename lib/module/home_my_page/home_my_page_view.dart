import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../module.dart';
import 'home_my_page_model.dart';

ChangeNotifierProvider<HomeMyPageModel> createHomeMyPage() {
  return ChangeNotifierProvider(
    create: (_) => HomeMyPageModel(),
    child: _HomeMyPageView(),
  );
}

class _HomeMyPageView extends StatefulWidget {
  @override
  _HomeMyPageViewState createState() => _HomeMyPageViewState();
}

class _HomeMyPageViewState extends State<_HomeMyPageView> {
  void searchClick() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => createSearch()),
    );
  }

  void profileClick() {
    // TODO
  }

  void logoutClick() {
    // TODO
  }

  void changeLanguageClick() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => createLanguage()),
    );
  }

  void privacyClick() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => createPrivacy()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeMyPageModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('My Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: searchClick,
          ),
          IconButton(
            icon: Icon(Icons.accessibility),
            onPressed: profileClick,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FlatButton(
              child: Text('Logout'),
              color: Colors.blue,
              onPressed: logoutClick,
            ),
            FlatButton(
              child: Text('Change language'),
              color: Colors.amber,
              onPressed: changeLanguageClick,
            ),
            FlatButton(
              child: Text('Privacy Policy'),
              color: Colors.blue,
              onPressed: privacyClick,
            ),
          ],
        ),
      ),
    );
  }
}
