import 'package:flutter/material.dart';
import 'package:hmdi/module/module.dart';
import 'package:provider/provider.dart';

import 'home_model.dart';

ChangeNotifierProvider<HomeModel> createHome() {
  return ChangeNotifierProvider(
    create: (_) => HomeModel(),
    child: _HomeView(),
  );
}

class _HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<_HomeView> {
  int index = 0;
  void _searchClick() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => createSearch()),
    );
  }

  void _profileClick() {}

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: _searchClick,
          ),
          IconButton(
            icon: Icon(Icons.accessibility),
            onPressed: _profileClick,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        onTap: (i) {
          setState(() {
            index = i;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            title: Text('Configurator'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            title: Text('Presentation'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.youtube_searched_for),
            title: Text('My Sales'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Text('My Page'),
          ),
        ],
      ),
      body: () {
        switch (index) {
          case 0:
            return createConfigurator();
          case 1:
            return createPresentation();
          case 2:
            return Container(color: Colors.red[100]);
          case 3:
            return createMyPage();
          default:
            break;
        }
      }(),
    );
  }
}
