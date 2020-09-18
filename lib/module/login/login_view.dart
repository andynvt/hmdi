import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../home/home_view.dart';
import 'login_model.dart';

ChangeNotifierProvider<LoginModel> createLogin() {
  return ChangeNotifierProvider(
    create: (_) => LoginModel(),
    child: _LoginView(),
  );
}

class _LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<_LoginView> {
  void _loginClick() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => createHome()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<LoginModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: FlatButton(
          onPressed: _loginClick,
          color: Colors.blue,
          child: Text('Login'),
        ),
      ),
    );
  }
}
