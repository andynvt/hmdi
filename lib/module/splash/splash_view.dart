import 'package:flutter/material.dart';
import 'package:hmdi/module/module.dart';

Widget createSplash() {
  return _SplashView();
}

class _SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<_SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 200), _checkSignIn);
  }

  void _checkSignIn() {
    _goHome();
  }

  void _goHome() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => createHome()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Splash'),
      ),
    );
  }
}
